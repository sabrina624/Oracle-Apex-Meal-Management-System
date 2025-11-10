prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Guest Meal Report'
,p_alias=>'GUEST-MEAL-REPORT'
,p_step_title=>'Guest Meal Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29612192760954627)
,p_plug_name=>'Guest Meal Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    g.GUEST_ID,',
'    g.EMP_CODE,',
'    e.emp_name,',
'    g.GUEST_DATE,',
'    g.GUEST_NAME,',
'    g.GUEST_COUNT,',
'    b.DAILY_MEAL_COST AS PER_MEAL_COST,',
'    (b.DAILY_MEAL_COST * g.GUEST_COUNT) AS TOTAL_GUEST_MEAL_COST,',
'    g.USER_ID,',
'    g.ENTRY_DATE,',
'    g.LAST_UPDATE,',
'    g.LAST_UPDATE_DATE',
'FROM PHOENIX_GUEST_MEAL_TRACKER g, PHOENIX_DAILY_BUDGET_TRACKER b, phoenix_hr_emp_master e',
'    where g.GUEST_DATE = b.MEAL_DATE',
'    and g.emp_code=e.emp_code;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Guest Meal Report'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(29612287754954627)
,p_name=>'Guest Meal Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'20'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>29612287754954627
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29613015904954630)
,p_db_column_name=>'GUEST_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Guest ID'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20:P20_GUEST_ID,P20_ROWID:#GUEST_ID#,#ROWID#'
,p_column_linktext=>'#GUEST_ID#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29613408570954631)
,p_db_column_name=>'EMP_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Emp Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29613860676954631)
,p_db_column_name=>'GUEST_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Guest Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29614240197954632)
,p_db_column_name=>'GUEST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Guest Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29614659197954632)
,p_db_column_name=>'GUEST_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Guest Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29615026605954633)
,p_db_column_name=>'PER_MEAL_COST'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Per Meal Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29615820580954634)
,p_db_column_name=>'USER_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'User ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29616238243954634)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29616632144954634)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29617005332954635)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29934995340967497)
,p_db_column_name=>'TOTAL_GUEST_MEAL_COST'
,p_display_order=>21
,p_column_identifier=>'L'
,p_column_label=>'Total Guest Meal Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14692731214624747)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>31
,p_column_identifier=>'M'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(29662344027416647)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'145019'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GUEST_ID:GUEST_DATE:GUEST_NAME:EMP_CODE:EMP_NAME:GUEST_COUNT:PER_MEAL_COST:TOTAL_GUEST_MEAL_COST:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15165373259061758)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29612192760954627)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15165915463061767)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(29612192760954627)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15166482059061770)
,p_event_id=>wwv_flow_imp.id(15165915463061767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29612192760954627)
);
wwv_flow_imp.component_end;
end;
/
