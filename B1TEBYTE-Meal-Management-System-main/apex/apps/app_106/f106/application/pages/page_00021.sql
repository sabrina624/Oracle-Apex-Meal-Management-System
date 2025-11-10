prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1800582798131282
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'INTERN'
);
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Dashboard '
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard '
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.test-card .t-Cards-item {',
'    background-color: red !important;',
'}',
'',
'',
'',
'',
'',
'.my-card-value {',
'    padding-top: 20px !important;',
'    padding-bottom: 20px !important;',
'}',
'',
'.my-card-value H4 {',
'    font-size: large;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27318412561507270)
,p_plug_name=>'Total Meals Per Day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_query_type=>'TABLE'
,p_query_table=>'PHOENIX_DAILY_BUDGET_TRACKER'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P21_MONTH,P21_YEAR'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(15228429412422556)
,p_region_id=>wwv_flow_imp.id(27318412561507270)
,p_chart_type=>'area'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(15230785863422557)
,p_chart_id=>wwv_flow_imp.id(15228429412422556)
,p_seq=>10
,p_name=>'series 3'
,p_data_source_type=>'TABLE'
,p_max_row_count=>50
,p_query_table=>'PHOENIX_DAILY_BUDGET_TRACKER'
,p_include_rowid_column=>false
,p_items_value_column_name=>'TOTAL_MEALS'
,p_items_label_column_name=>'MEAL_DATE'
,p_color=>'#00e5ff'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15228965403422557)
,p_chart_id=>wwv_flow_imp.id(15228429412422556)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Regular Date'
,p_title_font_family=>'Arial'
,p_title_font_style=>'normal'
,p_title_font_size=>'12'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15230169959422557)
,p_chart_id=>wwv_flow_imp.id(15228429412422556)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_title=>'Total Meals'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15229514947422557)
,p_chart_id=>wwv_flow_imp.id(15228429412422556)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Meals'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28316058628001682)
,p_plug_name=>'Overview Of Meal Cost'
,p_title=>'Overview Of Meal Cost'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>6
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P21_MONTH,P21_YEAR'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(15224237258422545)
,p_region_id=>wwv_flow_imp.id(28316058628001682)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(15225903804422552)
,p_chart_id=>wwv_flow_imp.id(15224237258422545)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    TO_CHAR(MEAL_DATE, ''DD-Mon-YYYY'') AS LABEL,',
'    NVL(SUM(TOTAL_MEALS * DAILY_MEAL_COST), 0) AS VALUE',
'FROM PHOENIX_DAILY_BUDGET_TRACKER',
'WHERE MONTH = NVL(:P21_MONTH, TO_NUMBER(TO_CHAR(SYSDATE, ''MM'')))',
'  AND YEAR  = NVL(:P21_YEAR,  TO_NUMBER(TO_CHAR(SYSDATE, ''YYYY'')))',
'GROUP BY MEAL_DATE',
'ORDER BY MEAL_DATE;'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15224793197422548)
,p_chart_id=>wwv_flow_imp.id(15224237258422545)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15225341312422549)
,p_chart_id=>wwv_flow_imp.id(15224237258422545)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Daily Meal Cost'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28316515200001687)
,p_plug_name=>'Overview Of Budget Summary'
,p_title=>'Overview Of Budget Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P21_MONTH,P21_YEAR'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(15226983936422554)
,p_region_id=>wwv_flow_imp.id(28316515200001687)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(15227459564422555)
,p_chart_id=>wwv_flow_imp.id(15226983936422554)
,p_seq=>10
,p_name=>'Series 2'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''Available Budget'' AS LABEL,',
'    NVL(SUM(AVAILABLE_BUDGET), 0) AS VALUE',
'FROM PHOENIX_DAILY_BUDGET_TRACKER',
'WHERE MONTH = NVL(:P21_MONTH, TO_NUMBER(TO_CHAR(SYSDATE, ''MM'')))',
'  AND YEAR  = NVL(:P21_YEAR,  TO_NUMBER(TO_CHAR(SYSDATE, ''YYYY'')))',
'UNION ALL',
'SELECT ',
'    ''Remaining Budget'',',
'    NVL(SUM(REMAINING_BUDGET), 0)',
'FROM PHOENIX_DAILY_BUDGET_TRACKER',
'WHERE MONTH = NVL(:P21_MONTH, TO_NUMBER(TO_CHAR(SYSDATE, ''MM'')))',
'  AND YEAR  = NVL(:P21_YEAR,  TO_NUMBER(TO_CHAR(SYSDATE, ''YYYY'')))',
'UNION ALL',
'SELECT ',
'    ''Extra Cost'',',
'    NVL(SUM(EXTRA_COST), 0)',
'FROM PHOENIX_DAILY_BUDGET_TRACKER',
'WHERE MONTH = NVL(:P21_MONTH, TO_NUMBER(TO_CHAR(SYSDATE, ''MM'')))',
'  AND YEAR  = NVL(:P21_YEAR,  TO_NUMBER(TO_CHAR(SYSDATE, ''YYYY'')));',
''))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28557609513360479)
,p_plug_name=>'Budget Summary'
,p_title=>'Budget Summary'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''Available Budget'' AS CARD_TITLE,',
'    TO_CHAR(NVL(SUM(PDBT.AVAILABLE_BUDGET), 0), ''FM9G999G990D00'') AS CARD_VALUE,',
'    ''fa-wallet'' AS CARD_ICON,',
'    ''t-Card-icon--success'' AS ICON_COLOR_CLASS',
'FROM PHOENIX_DAILY_BUDGET_TRACKER PDBT',
'WHERE TO_CHAR(PDBT.MEAL_DATE, ''MM'') = NVL(:MONTH, TO_CHAR(SYSDATE, ''MM''))',
'  AND TO_CHAR(PDBT.MEAL_DATE, ''YYYY'') = NVL(:YEAR, TO_CHAR(SYSDATE, ''YYYY''))',
'',
'UNION ALL',
'',
'SELECT ',
'    ''Total Cost'' AS CARD_TITLE,',
'    TO_CHAR(NVL(SUM(PDBT.TOTAL_MEALS * PDBT.DAILY_MEAL_COST), 0), ''FM9G999G990D00'') AS CARD_VALUE,',
'    ''fa-coins'' AS CARD_ICON,',
'    ''t-Card-icon--warning'' AS ICON_COLOR_CLASS',
'FROM PHOENIX_DAILY_BUDGET_TRACKER PDBT',
'WHERE TO_CHAR(PDBT.MEAL_DATE, ''MM'') = NVL(:MONTH, TO_CHAR(SYSDATE, ''MM''))',
'  AND TO_CHAR(PDBT.MEAL_DATE, ''YYYY'') = NVL(:YEAR, TO_CHAR(SYSDATE, ''YYYY''))',
'',
'UNION ALL',
'',
'SELECT ',
'    ''Remaining Budget'' AS CARD_TITLE,',
'    TO_CHAR(NVL(SUM(PDBT.REMAINING_BUDGET), 0), ''FM9G999G990D00'') AS CARD_VALUE,',
'    ''fa-piggy-bank'' AS CARD_ICON,',
'    ''t-Card-icon--danger'' AS ICON_COLOR_CLASS',
'FROM PHOENIX_DAILY_BUDGET_TRACKER PDBT',
'WHERE TO_CHAR(PDBT.MEAL_DATE, ''MM'') = NVL(:P21_MONTH, TO_CHAR(SYSDATE, ''MM''))',
'  AND TO_CHAR(PDBT.MEAL_DATE, ''YYYY'') = NVL(:P21_YEAR, TO_CHAR(SYSDATE,''YYYY''));'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P21_MONTH,P21_YEAR'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(15231783028422560)
,p_region_id=>wwv_flow_imp.id(28557609513360479)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_component_css_classes=>'my-card-value'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9794776247293842)
,p_name=>'P21_MONTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28557609513360479)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE, ''MM''))'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TO_DATE(LEVEL, ''MM''), ''Month'') AS DISPLAY_VALUE,',
'       LEVEL AS RETURN_VALUE',
'FROM dual',
'CONNECT BY LEVEL <= 12',
'ORDER BY LEVEL;',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9794844741293843)
,p_name=>'P21_YEAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28557609513360479)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE, ''YYYY''))'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EXTRACT(YEAR FROM MEAL_DATE) AS display_value,',
'       EXTRACT(YEAR FROM MEAL_DATE) AS return_value',
'FROM PHOENIX_DAILY_BUDGET_TRACKER',
'GROUP BY EXTRACT(YEAR FROM MEAL_DATE)',
'ORDER BY 1 DESC',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15380310785574742)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_MONTH,P21_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15380441127574743)
,p_event_id=>wwv_flow_imp.id(15380310785574742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28557609513360479)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
