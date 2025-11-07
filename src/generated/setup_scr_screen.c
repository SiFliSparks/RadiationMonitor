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


extern int flag_key1;
extern int flag_key2;


/* Forward declaration of event callback functions */
static void chart_bar_draw_event_cb(lv_event_t * e);
static void chart_axis_label_draw_event_cb(lv_event_t * e);


void setup_scr_screen(lv_ui *ui)
{
    // Screen setup code
    
    ui->screen = lv_obj_create(NULL);
    lv_obj_set_style_bg_color(ui->screen, lv_color_hex(0x000000), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_scroll_dir(ui->screen, LV_DIR_NONE);
    // Chart setup code
    ui->screen_chart_1 = lv_chart_create(ui->screen);
    
    /* Add event callback for chart bar gradient effect */
    lv_obj_add_event_cb(ui->screen_chart_1, chart_bar_draw_event_cb, LV_EVENT_DRAW_PART_BEGIN, NULL);// add draw event callback
    lv_obj_add_event_cb(ui->screen_chart_1, chart_axis_label_draw_event_cb, LV_EVENT_DRAW_PART_BEGIN, NULL);// add axis label draw event callback
    lv_chart_set_type(ui->screen_chart_1, LV_CHART_TYPE_BAR);
    lv_chart_set_div_line_count(ui->screen_chart_1, 4, 9);
    // Number of bars
    lv_chart_set_point_count(ui->screen_chart_1, 79);
    // Set Y-axis range

    lv_chart_set_range(ui->screen_chart_1, LV_CHART_AXIS_PRIMARY_Y, -110, -20);
    
    lv_chart_set_axis_tick(ui->screen_chart_1, LV_CHART_AXIS_PRIMARY_Y, 4, 4, 4, 3, true, 40);
    
    lv_chart_set_axis_tick(ui->screen_chart_1, LV_CHART_AXIS_PRIMARY_X, 10, 1, 79, 1, true, 20);
    

    lv_chart_set_zoom_x(ui->screen_chart_1, 256);
    lv_chart_set_zoom_y(ui->screen_chart_1, 256);

    ui->screen_chart_1_0 = lv_chart_add_series(ui->screen_chart_1, lv_color_hex(0x00FF00), LV_CHART_AXIS_PRIMARY_Y);
    
    /* Apply gradient style after all other style settings */
    /* Temporarily remove gradient code */

#if LV_USE_FREEMASTER == 0
    for(int i = 0; i < 79; i++){
            lv_chart_set_next_value(ui->screen_chart_1, ui->screen_chart_1_0,-127);
    }
#endif

  
    lv_obj_set_pos(ui->screen_chart_1, 25, 80);
    lv_obj_set_size(ui->screen_chart_1, 360, 300); 
    

    lv_obj_set_style_min_width(ui->screen_chart_1, 360, LV_PART_MAIN); 
    
    lv_obj_set_scrollbar_mode(ui->screen_chart_1, LV_SCROLLBAR_MODE_OFF);

    // Set chart style, part: LV_PART_MAIN, state: LV_STATE_DEFAULT
    lv_obj_set_style_bg_opa(ui->screen_chart_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_chart_1, lv_color_hex(0x000000), LV_PART_MAIN|LV_STATE_DEFAULT);//Background color
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

    //channel label
    ui->label_ch = lv_label_create(ui->screen);
    lv_label_set_text(ui->label_ch, "Ch");
    lv_obj_set_style_text_color(ui->label_ch, lv_color_hex(0xFFFFFF), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->label_ch, &lv_font_montserratMedium_16, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(ui->label_ch, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_pos(ui->label_ch, 15, 400);

    //percent label
    ui->label_rssi = lv_label_create(ui->screen);
    lv_label_set_text(ui->label_rssi, "RSSI");
    lv_obj_set_style_text_color(ui->label_rssi, lv_color_hex(0xFFFFFF), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(ui->label_rssi, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_pos(ui->label_rssi, 10, 50);
    
    //switch button label
    ui->label_switch = lv_label_create(ui->screen);
    if(flag_key2){
        lv_label_set_text(ui->label_switch, "ON");
        
    }else{
        lv_label_set_text(ui->label_switch, "OFF");
    }
    lv_obj_set_style_text_align(ui->label_switch, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(ui->label_switch, lv_color_hex(0xffffff), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->label_switch, &lv_font_montserratMedium_16, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(ui->label_switch, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_pos(ui->label_switch, 15, 30);
    
    /* Use LVGL v8 chart specific styles to set bar width and spacing */
    /* Chart width allows 10 pixels between bars, 79 bars total, adjust inner padding to set bar width */
    lv_obj_set_style_pad_column(ui->screen_chart_1, 0, LV_PART_ITEMS);
    lv_obj_set_style_pad_column(ui->screen_chart_1, 1, LV_PART_MAIN);
        

    lv_chart_set_zoom_x(ui->screen_chart_1, 256);


   }

/* Optimized bar chart gradient effect */
static void chart_bar_draw_event_cb(lv_event_t * e)
{
    lv_event_code_t code = lv_event_get_code(e);
    
    if(code == LV_EVENT_DRAW_PART_BEGIN) {
        lv_obj_draw_part_dsc_t * dsc = lv_event_get_draw_part_dsc(e);
        
        if(!dsc || !dsc->rect_dsc) return;
        if(dsc->part != LV_PART_ITEMS || dsc->type != LV_CHART_DRAW_PART_BAR) return;

        //sc->rect_dsc->outline_width = 2;

        lv_coord_t value = dsc->value;  // Value range: -127 to -20
        
        dsc->rect_dsc->bg_grad.dir = LV_GRAD_DIR_VER;
        dsc->rect_dsc->bg_grad.dither = LV_DITHER_NONE;
        dsc->rect_dsc->bg_grad.stops_count = 2;
        
        /* Set colors based on value range */
        if(value >= -47){
            dsc->rect_dsc->bg_grad.stops[0].color = lv_color_hex(0xFF0000);  // Red
            dsc->rect_dsc->bg_grad.stops[0].frac = 0;
            dsc->rect_dsc->bg_grad.stops[1].color = lv_color_hex(0x00FF00);  // Green
            dsc->rect_dsc->bg_grad.stops[1].frac = 255;

        }else if(value >= -74) { 
            uint8_t mix_ratio = ((value + 84) * 255) / 50;
            
            lv_color_t mixed_color = lv_color_mix(
                lv_color_hex(0xFF0000),  
                lv_color_hex(0x808000), 
                mix_ratio
            );
            
            dsc->rect_dsc->bg_grad.stops[0].color = mixed_color;  // Mixed color
            dsc->rect_dsc->bg_grad.stops[0].frac = 32;
            dsc->rect_dsc->bg_grad.stops[1].color = lv_color_hex(0x00FF00);  // Green
            dsc->rect_dsc->bg_grad.stops[1].frac = 255;
        } 
        else if(value >= -101 && value < -74){        
            uint8_t mix_ratio = ((value + 124) * 255) / 50;
            
            lv_color_t mixed_color = lv_color_mix(
                lv_color_hex(0x808000),  
                lv_color_hex(0x00FF00), 
                mix_ratio
            );
            dsc->rect_dsc->bg_grad.stops[0].color = mixed_color;  // Dark yellow  
            dsc->rect_dsc->bg_grad.stops[0].frac = 0;
            dsc->rect_dsc->bg_grad.stops[1].color = lv_color_hex(0x00FF00); // Green
            dsc->rect_dsc->bg_grad.stops[1].frac = 255;
        }else if(value < -101 &&value >= -127){
            dsc->rect_dsc->bg_grad.stops[0].color = lv_color_hex(0x00FF00);  // Green
            dsc->rect_dsc->bg_grad.stops[0].frac = 0;
            dsc->rect_dsc->bg_grad.stops[1].color =  lv_color_hex(0x00FF00);   // Green
            dsc->rect_dsc->bg_grad.stops[1].frac = 255;
        } 
        dsc->rect_dsc->bg_opa = LV_OPA_COVER;
    }
}

/* Axis label drawing event callback function - for dynamically modifying axis label values */
static void chart_axis_label_draw_event_cb(lv_event_t * e)
{
    lv_event_code_t code = lv_event_get_code(e);
    
    if(code == LV_EVENT_DRAW_PART_BEGIN) {
        lv_obj_draw_part_dsc_t * dsc = lv_event_get_draw_part_dsc(e);
        

        if(!dsc) return;
        
        /* Handle X-axis label drawing */
        if(dsc->part == LV_PART_TICKS && dsc->type == LV_CHART_DRAW_PART_TICK_LABEL) {
            if(dsc->id == LV_CHART_AXIS_PRIMARY_X) {
                /* Dynamically modify X-axis label values */
                static char label_text[10];  // Use static array to avoid memory issues
                
                /* Calculate channel value for each tick */
                int tick_index = dsc->value;  // Current tick index
                
                if(tick_index == 0){
                    sprintf(label_text, "%d", 1);
                    dsc->text = label_text;
                    dsc->line_dsc->color = lv_color_hex(0xffff00);
                    dsc->line_dsc->width = 2;
                }else if(tick_index == 78){
                    sprintf(label_text, "%d", 79);
                    dsc->text = label_text;
                    dsc->line_dsc->color = lv_color_hex(0xffff00);
                    dsc->line_dsc->width = 2;                    
                }else if(tick_index%10 == 9){
                    sprintf(label_text, "%d", tick_index);
                    dsc->text = label_text;
                    dsc->line_dsc->color = lv_color_hex(0xffff00);
                    dsc->line_dsc->width = 2;                    
                }else{
                    dsc->text = NULL;
                    dsc->line_dsc->color = lv_color_hex(0xFFFFFF);
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