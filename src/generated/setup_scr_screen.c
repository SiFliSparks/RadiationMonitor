/*
* Copyright 2025 NXP
* NXP Proprietary. This software is owned or controlled by NXP and may only be used strictly in
* accordance with the applicable license terms. By expressly accepting such terms or by downloading, installing,
* activating and/or otherwise using the software, you are agreeing that you have read, and that you agree to
* comply with and are bound by, such license terms.  If you do not agree to be bound by the applicable license
* terms, then you may not retain, install, activate or otherwise use the software.
*/

#include "lvgl.h"
#include <stdio.h>
#include "gui_guider.h"
#include "events_init.h"
#include "widgets_init.h"


extern int flag_key2_short;


/* Forward declarations for event callback functions */
static void chart_axis_label_draw_event_cb(lv_event_t * e);
static void chart_bar_draw_event_cb(lv_event_t * e);

/* Function to update rectangle height and color based on values */
void update_bar_rects(lv_ui *ui, int * values);

/* Global variable: stores rectangle numerical data */
static int bar_values[79];  // Store values for 79 rectangles


void setup_scr_screen(lv_ui *ui)
{
    // Screen setup code
    
    ui->screen = lv_obj_create(NULL);
    lv_obj_set_style_bg_color(ui->screen, lv_color_hex(0x000000), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_scroll_dir(ui->screen, LV_DIR_NONE);
    
    // Chart setup code - only use chart for appearance (axis and grid)
    ui->screen_chart_1 = lv_chart_create(ui->screen);
    // Completely disable chart scrolling
    lv_obj_set_scrollbar_mode(ui->screen_chart_1, LV_SCROLLBAR_MODE_OFF);
    lv_obj_clear_flag(ui->screen_chart_1, LV_OBJ_FLAG_SCROLLABLE);
    lv_obj_set_scroll_dir(ui->screen_chart_1, LV_DIR_NONE);

    /* Add event callback for axis label drawing */
    lv_obj_add_event_cb(ui->screen_chart_1, chart_axis_label_draw_event_cb, LV_EVENT_DRAW_PART_BEGIN, NULL);// Add axis label drawing event callback
    
    // Set chart to line type to hide bar chart (we'll use rectangles instead)
    lv_chart_set_type(ui->screen_chart_1, LV_CHART_TYPE_LINE);
    lv_chart_set_div_line_count(ui->screen_chart_1, 4, 9);
    
    // Set data point count to 0 to hide data series
    lv_chart_set_point_count(ui->screen_chart_1, 0);
    
    // Set Y-axis range
    lv_chart_set_range(ui->screen_chart_1, LV_CHART_AXIS_PRIMARY_Y, -110, -20);
    
    lv_chart_set_axis_tick(ui->screen_chart_1, LV_CHART_AXIS_PRIMARY_Y, 4, 4, 4, 3, true, 40);
    lv_chart_set_axis_tick(ui->screen_chart_1, LV_CHART_AXIS_PRIMARY_X, 10, 1, 79, 1, true, 20);
    
    lv_chart_set_zoom_x(ui->screen_chart_1, 256);
    lv_chart_set_zoom_y(ui->screen_chart_1, 256);

    // Create 79 rectangles to replace chart bar graph
    for(int i = 0; i < 79; i++) {
        ui->bar_rects[i] = lv_obj_create(ui->screen_chart_1);
        
        // Tight arrangement: each rectangle width is 4 pixels, no gaps
        // Chart width 316px, 79 rectangles, total width 316px, completely fills chart width
        lv_coord_t rect_width = 4;  // Rectangle width
        
        lv_obj_set_size(ui->bar_rects[i], rect_width, 0);  // Width 4 pixels, initial height 0
        lv_obj_set_pos(ui->bar_rects[i], i * rect_width, 300);  // Arrange tightly from left to right (chart bottom)
        
        // Set rectangle style - ensure no border, no corner radius, no spacing
        lv_obj_set_style_bg_opa(ui->bar_rects[i], LV_OPA_COVER, LV_PART_MAIN|LV_STATE_DEFAULT);
        lv_obj_set_style_bg_color(ui->bar_rects[i], lv_color_hex(0x00FF00), LV_PART_MAIN|LV_STATE_DEFAULT);
        lv_obj_set_style_radius(ui->bar_rects[i], 0, LV_PART_MAIN|LV_STATE_DEFAULT);
        lv_obj_set_style_border_width(ui->bar_rects[i], 0, LV_PART_MAIN|LV_STATE_DEFAULT);
        lv_obj_set_style_pad_all(ui->bar_rects[i], 0, LV_PART_MAIN|LV_STATE_DEFAULT);  // No padding
        lv_obj_set_style_pad_left(ui->bar_rects[i], 0, LV_PART_MAIN|LV_STATE_DEFAULT);
        lv_obj_set_style_pad_right(ui->bar_rects[i], 0, LV_PART_MAIN|LV_STATE_DEFAULT);
        lv_obj_set_style_pad_top(ui->bar_rects[i], 0, LV_PART_MAIN|LV_STATE_DEFAULT);
        lv_obj_set_style_pad_bottom(ui->bar_rects[i], 0, LV_PART_MAIN|LV_STATE_DEFAULT);
        // Gradient color configuration
        lv_obj_set_style_bg_grad_dir(ui->bar_rects[i], LV_GRAD_DIR_VER, LV_PART_MAIN|LV_STATE_DEFAULT);
        // Disable rectangle scrolling
        lv_obj_set_scrollbar_mode(ui->bar_rects[i], LV_SCROLLBAR_MODE_OFF);
        lv_obj_clear_flag(ui->bar_rects[i], LV_OBJ_FLAG_SCROLLABLE);
        
        // Add draw event callback for each rectangle
        lv_obj_add_event_cb(ui->bar_rects[i], chart_bar_draw_event_cb, LV_EVENT_DRAW_PART_BEGIN, (void*)(intptr_t)i);
    }

    lv_obj_set_pos(ui->screen_chart_1, 40, 80);
    lv_obj_set_size(ui->screen_chart_1, 316, 300); 
    
    lv_obj_set_style_min_width(ui->screen_chart_1, 316, LV_PART_MAIN); 
    
    lv_obj_set_scrollbar_mode(ui->screen_chart_1, LV_SCROLLBAR_MODE_OFF);
    
    // Ensure chart container has no padding so rectangles can be tightly arranged
    lv_obj_set_style_pad_all(ui->screen_chart_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(ui->screen_chart_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(ui->screen_chart_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(ui->screen_chart_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(ui->screen_chart_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);

    // Set chart style, part: LV_PART_MAIN, state: LV_STATE_DEFAULT
    lv_obj_set_style_bg_opa(ui->screen_chart_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);  // Transparent background
    lv_obj_set_style_bg_color(ui->screen_chart_1, lv_color_hex(0x000000), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(ui->screen_chart_1, LV_GRAD_DIR_NONE, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui->screen_chart_1, 1, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(ui->screen_chart_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(ui->screen_chart_1, lv_color_hex(0x606060), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(ui->screen_chart_1, LV_BORDER_SIDE_FULL, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_chart_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_line_width(ui->screen_chart_1, 2, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_line_color(ui->screen_chart_1, lv_color_hex(0x606060), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_line_opa(ui->screen_chart_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(ui->screen_chart_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);

    // Set Y-axis style to ensure tick marks and text are visible
    // Set chart style, part: LV_PART_TICKS, state: LV_STATE_DEFAULT
    lv_obj_set_style_text_color(ui->screen_chart_1, lv_color_hex(0xFFFFFF), LV_PART_TICKS|LV_STATE_DEFAULT); // Tick text color
    lv_obj_set_style_text_font(ui->screen_chart_1, &lv_font_montserratMedium_12, LV_PART_TICKS|LV_STATE_DEFAULT); // Tick text font
    lv_obj_set_style_text_opa(ui->screen_chart_1, 255, LV_PART_TICKS|LV_STATE_DEFAULT); // Text opacity
    lv_obj_set_style_line_width(ui->screen_chart_1, 1, LV_PART_TICKS|LV_STATE_DEFAULT); // Tick line width
    lv_obj_set_style_line_color(ui->screen_chart_1, lv_color_hex(0xFFFFFF), LV_PART_TICKS|LV_STATE_DEFAULT); // Tick line color
    lv_obj_set_style_line_opa(ui->screen_chart_1, 255, LV_PART_TICKS|LV_STATE_DEFAULT); // Tick line opacity

    // Channel label
    ui->label_ch = lv_label_create(ui->screen);
    lv_label_set_text(ui->label_ch, "MHz");
    lv_obj_set_style_text_color(ui->label_ch, lv_color_hex(0xFFFFFF), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->label_ch, &lv_font_montserratMedium_16, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(ui->label_ch, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_pos(ui->label_ch, 339, 400);

    // Percentage label
    ui->label_rssi = lv_label_create(ui->screen);
    lv_label_set_text(ui->label_rssi, "dbm");
    lv_obj_set_style_text_color(ui->label_rssi, lv_color_hex(0xFFFFFF), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(ui->label_rssi, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_pos(ui->label_rssi, 30, 50);
    
    // Switch button label
    ui->label_switch = lv_label_create(ui->screen);
    if(flag_key2_short){
        lv_label_set_text(ui->label_switch, "ON");
        
    }else{
        lv_label_set_text(ui->label_switch, "OFF");
    }
    lv_obj_set_style_text_align(ui->label_switch, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(ui->label_switch, lv_color_hex(0xffffff), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->label_switch, &lv_font_montserratMedium_16, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(ui->label_switch, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_pos(ui->label_switch, 30, 30);
    
        

    lv_chart_set_zoom_x(ui->screen_chart_1, 256);

    // Initialize all bar charts to minimum height
    int initial_values[79];
    for(int i = 0; i < 79; i++) {
        initial_values[i] = -110;
    }
    update_bar_rects(ui, initial_values);

   }

/* Update rectangle height and color based on values */
void update_bar_rects(lv_ui *ui, int * values)
 {
     // Tight arrangement parameters
     lv_coord_t rect_width = 4;  // Rectangle width
     lv_coord_t total_rects_width = 79 * rect_width;  // Total width of all rectangles
     
     for(int i = 0; i < 79; i++) {
         if(ui->bar_rects[i]) {
             // Calculate height based on value (-110 to -20 range)
             int value = values[i];
             if(value < -110)value = -110;
             if(value > -20)value = -20;
             
             // Store value in global array for drawing event use
             bar_values[i] = value;
             
             lv_coord_t height = (value + 110)*300/90;
             
             // Set rectangle height
             lv_obj_set_height(ui->bar_rects[i], height);
             
             // Tight arrangement: each rectangle width is 4 pixels, no gaps
             lv_coord_t x_pos =  i * rect_width;
             
             // Update position to align with chart bottom (chart height is 300)
             lv_obj_set_pos(ui->bar_rects[i], x_pos, 300 - height);
            }
        }
}

static void chart_axis_label_draw_event_cb(lv_event_t * e){
    lv_event_code_t code = lv_event_get_code(e);
    
    if(code == LV_EVENT_DRAW_PART_BEGIN) {
        lv_obj_draw_part_dsc_t * dsc = lv_event_get_draw_part_dsc(e);
        

        if(!dsc) return;
        /* Handle X-axis label drawing  lv_gradient_calculate*/
        if(dsc->part == LV_PART_TICKS && dsc->type == LV_CHART_DRAW_PART_TICK_LABEL) {
            if(dsc->id == LV_CHART_AXIS_PRIMARY_X) {
                /* Dynamically modify X-axis label values */
                static char label_text[10];  // Use static array to avoid memory issues
                
                /* Calculate channel value for each tick */
                int tick_index = dsc->value;  // Current tick index
                
                if(tick_index == 0){
                    sprintf(label_text, "%d", 2402);
                    dsc->text = label_text;
                    dsc->line_dsc->color = lv_color_hex(0xffffff);
                    dsc->line_dsc->width = 2;
                }else if(tick_index == 78){
                    sprintf(label_text, "%d", 2480);
                    dsc->text = label_text;
                    dsc->line_dsc->color = lv_color_hex(0xffffff);
                    dsc->line_dsc->width = 2;                    
                }else if(tick_index == 39){
                    sprintf(label_text, "%d", 2441);
                    dsc->text = label_text;
                    dsc->line_dsc->color = lv_color_hex(0xffffff);
                    dsc->line_dsc->width = 2;                    
                }else{
                    dsc->text = NULL;
                    dsc->line_dsc->color = lv_color_hex(0x000000);
                    dsc->line_dsc->width = 1;  
                }
                /* Set label style - add null pointer check */
                if(dsc->label_dsc) {
                    dsc->label_dsc->opa = LV_OPA_COVER;
                    dsc->label_dsc->color = lv_color_hex(0xFFFFFF);  // White text
                }
            }
        }
    }
}

/* Bar chart rectangle drawing event callback function */
static void chart_bar_draw_event_cb(lv_event_t * e)
{
    lv_event_code_t code = lv_event_get_code(e);
    
    if(code == LV_EVENT_DRAW_PART_BEGIN) {
        lv_obj_draw_part_dsc_t * dsc = lv_event_get_draw_part_dsc(e);
        
        if(!dsc) return;
        
        /* Handle rectangle background drawing */
        if(dsc->part == LV_PART_MAIN && dsc->type == LV_OBJ_DRAW_PART_RECTANGLE) {
            /* Get rectangle index */
            int rect_index = (int)(intptr_t)lv_event_get_user_data(e);
            
            /* Get current rectangle value from global array */
            int value = bar_values[rect_index];
            
            /* Set gradient effect based on value range */
            if(value >= -47) {
                /* Case 1: value >= -47, red to green gradient */
                dsc->rect_dsc->bg_grad.stops[0].color = lv_color_hex(0xFF0000);  // Top: red
                dsc->rect_dsc->bg_grad.stops[0].frac = 0;                        // Top: frac=0
                dsc->rect_dsc->bg_grad.stops[1].color = lv_color_hex(0x00FF00);  // Bottom: green
                dsc->rect_dsc->bg_grad.stops[1].frac = 255;                      // Bottom: frac=255
            } else if(value >= -74) {
                /* Case 2: -74 <= value < -47, red and dark yellow mix to green gradient */
                int mix_value = (value + 74) * 255 / 27;  // Map -74 to -47 range to 0-255
                if(mix_value < 0) mix_value = 0;
                if(mix_value > 255) mix_value = 255;
                uint8_t mix_ratio = (uint8_t)mix_value;
                
                dsc->rect_dsc->bg_grad.stops[0].color = lv_color_mix(lv_color_hex(0xFF0000), lv_color_hex(0x808000), mix_ratio);  // Top: red and dark yellow mix
                dsc->rect_dsc->bg_grad.stops[0].frac = 0;                        // Top: frac=0
                dsc->rect_dsc->bg_grad.stops[1].color = lv_color_hex(0x00FF00);  // Bottom: green
                dsc->rect_dsc->bg_grad.stops[1].frac = 255;                      // Bottom: frac=255
            } else if(value >= -101) {
                /* Case 3: -101 <= value < -74, dark yellow and green mix to green gradient */
                int mix_value = (value + 101) * 255 / 27;  // Map -101 to -74 range to 0-255
                if(mix_value < 0) mix_value = 0;
                if(mix_value > 255) mix_value = 255;
                uint8_t mix_ratio = (uint8_t)mix_value;
                
                dsc->rect_dsc->bg_grad.stops[0].color = lv_color_mix(lv_color_hex(0x808000), lv_color_hex(0x00FF00), mix_ratio);  // Top: dark yellow and green mix
                dsc->rect_dsc->bg_grad.stops[0].frac = 0;                        // Top: frac=0
                dsc->rect_dsc->bg_grad.stops[1].color = lv_color_hex(0x00FF00);  // Bottom: green
                dsc->rect_dsc->bg_grad.stops[1].frac = 255;                      // Bottom: frac=255
            } else {
                /* Case 4: value < -101, pure green */
                dsc->rect_dsc->bg_grad.stops[0].color = lv_color_hex(0x00FF00);  // Top: green
                dsc->rect_dsc->bg_grad.stops[0].frac = 0;                        // Top: frac=0
                dsc->rect_dsc->bg_grad.stops[1].color = lv_color_hex(0x00FF00);  // Bottom: green
                dsc->rect_dsc->bg_grad.stops[1].frac = 255;                      // Bottom: frac=255
            }
            
            /* Set gradient direction to vertical */
            dsc->rect_dsc->bg_grad.dir = LV_GRAD_DIR_VER;
            
            /* Ensure gradient opacity */
            dsc->rect_dsc->bg_opa = LV_OPA_COVER;
        }
    }
}