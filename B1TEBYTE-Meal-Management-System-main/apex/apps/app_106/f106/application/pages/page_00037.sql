prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_name=>'Daily attandence'
,p_alias=>'DAILY-ATTANDENCE'
,p_step_title=>'Daily attandence'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377461903145289262585)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377461903520121262588)
,p_plug_name=>'daily_attence_IG'
,p_title=>'Daily Attendance List'
,p_region_name=>'attendance_grid'
,p_parent_plug_id=>wwv_flow_imp.id(377461903145289262585)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DA.ATTENDANCE_ID,',
'    DA.EMP_CODE,',
'    H.EMP_NAME,',
'    DA.IS_TAKING_LUNCH,',
'    DA.IS_TAKING_DINNER,',
'    DA.ATTENDANCE_DATE,',
'    DA.MONTH_VALUE',
'FROM',
'    PHOENIX_DAILY_ATTENDANCE DA,',
'    PHOENIX_HR_EMP_MASTER H',
'where DA.EMP_CODE = H.EMP_CODE',
'and DA.ATTENDANCE_DATE = TO_DATE(:P37_DATE_SELECTION, ''MM/DD/YYYY'')',
'    AND H.STATUS_NAME = ''On Roll'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P37_DATE_SELECTION'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Daily Attendance List'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14690431064624724)
,p_name=>'MONTH_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTH_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186492388831235889250)
,p_name=>'EMP_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Emp Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(191867552202356819806)
,p_name=>'IS_TAKING_LUNCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_TAKING_LUNCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Is Taking Lunch'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(191867552320111819807)
,p_name=>'IS_TAKING_DINNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_TAKING_DINNER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Is Taking Dinner'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(191867552393932819808)
,p_name=>'ATTENDANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTENDANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(191867552549288819809)
,p_name=>'ATTENDANCE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTENDANCE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Attendance Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(377461903761980262591)
,p_name=>'EMP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emp Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(377461904300480262596)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>80
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(377461904434235262597)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(377461903542396262589)
,p_internal_uid=>377461903542396262589
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(377647437842804399841)
,p_interactive_grid_id=>wwv_flow_imp.id(377461903542396262589)
,p_static_id=>'934326609'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(377647438064398399841)
,p_report_id=>wwv_flow_imp.id(377647437842804399841)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14912546068080715)
,p_view_id=>wwv_flow_imp.id(377647438064398399841)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(14690431064624724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(191867319504086507738)
,p_view_id=>wwv_flow_imp.id(377647438064398399841)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(186492388831235889250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(191895672674819434700)
,p_view_id=>wwv_flow_imp.id(377647438064398399841)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(191867552202356819806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(191895673499774434702)
,p_view_id=>wwv_flow_imp.id(377647438064398399841)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(191867552320111819807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(191895674462781434704)
,p_view_id=>wwv_flow_imp.id(377647438064398399841)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(191867552393932819808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(191895675355001434706)
,p_view_id=>wwv_flow_imp.id(377647438064398399841)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(191867552549288819809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(377647439593763399846)
,p_view_id=>wwv_flow_imp.id(377647438064398399841)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(377461903761980262591)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(377659055969063200728)
,p_view_id=>wwv_flow_imp.id(377647438064398399841)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(377461904300480262596)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95950518848452807817)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(377461903145289262585)
,p_button_name=>'SAVE_ATTENDANCE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--simple:t-Button--pillStart:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Save Attendance'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377461905522479262604)
,p_name=>'P37_DATE_SELECTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(377461903145289262585)
,p_item_default=>'RETURN TO_CHAR(SYSDATE, ''MM/DD/YYYY'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_colspan=>5
,p_grid_column=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-sm:margin-left-none:margin-right-sm:t-Form-fieldContainer--slimPadding:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95950520396360807819)
,p_name=>'SUBMIT'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_DATE_SELECTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95950520807873807819)
,p_event_id=>wwv_flow_imp.id(95950520396360807819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95950519307446807817)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(377461903520121262588)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Manual Save Attendance'
,p_attribute_01=>'TABLE'
,p_attribute_03=>'PHOENIX_DAILY_ATTENDANCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>95950519307446807817
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95950519983298807818)
,p_process_sequence=>130
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auto-Insert Default Attendance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_selected_date   DATE := TO_DATE(:P37_DATE_SELECTION, ''MM/DD/YYYY'');',
'    v_day_type        VARCHAR2(10);',
'BEGIN',
'    -- Skip everything if the date selection is NULL',
'    IF :P37_DATE_SELECTION IS NULL THEN',
'        RETURN;',
'    END IF;',
'',
'    -------------------------------------------------------------------',
'    -- Step 1: Determine working day or weekend',
'    -------------------------------------------------------------------',
'    BEGIN',
'        SELECT CAL_WHLD',
'          INTO v_day_type',
'          FROM PHOENIX_CALENDAR_MASTER',
'         WHERE TRUNC(CAL_DATE) = v_selected_date;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            IF TO_CHAR(v_selected_date, ''DY'', ''NLS_DATE_LANGUAGE=ENGLISH'') IN (''FRI'') THEN',
'                v_day_type := ''Y''; -- Weekend',
'            ELSE',
'                v_day_type := ''W''; -- Working day',
'            END IF;',
'    END;',
'',
'    -------------------------------------------------------------------',
'    -- Step 2: Insert attendance for employees not yet inserted',
'    -------------------------------------------------------------------',
'    INSERT INTO PHOENIX_DAILY_ATTENDANCE (',
'        ATTENDANCE_DATE,',
'        EMP_CODE,',
'        IS_TAKING_LUNCH,',
'        IS_TAKING_DINNER',
'    )',
'    SELECT',
'        v_selected_date,',
'        H.EMP_CODE,',
'        CASE ',
'            WHEN v_day_type = ''W'' THEN NVL(H.LUNCH_PREF, ''Y'')',
'            ELSE ''N''',
'        END AS IS_TAKING_LUNCH,',
'        CASE ',
'            WHEN v_day_type = ''W'' THEN NVL(H.DINNER_PREF, ''N'')',
'            ELSE ''N''',
'        END AS IS_TAKING_DINNER',
'    FROM PHOENIX_HR_EMP_MASTER H',
'    WHERE H.STATUS_NAME = ''On Roll''',
'      AND NOT EXISTS (',
'          SELECT 1 ',
'          FROM PHOENIX_DAILY_ATTENDANCE D ',
'          WHERE D.EMP_CODE = H.EMP_CODE',
'          AND TRUNC(D.ATTENDANCE_DATE) = v_selected_date',
'      );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>95950519983298807818
);
wwv_flow_imp.component_end;
end;
/
