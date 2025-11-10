prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Monthly Information'
,p_alias=>'MONTHLY-INFORMATION'
,p_step_title=>'Monthly Information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13383670441081903)
,p_plug_name=>'Monthly Information'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    M.MANAGER_ID,',
'    M.EMP_CODE,',
unistr('    NVL(E.EMP_NAME, ''\2014 No Name Found \2014'') AS EMP_NAME,'),
'    M.MONTH,',
'    M.YEAR,',
'    M.EMPLOYEE_CONTRIBUTION,',
'    M.COMPANY_CONTRIBUTION',
'FROM PHOENIX_MEAL_MANAGER M, PHOENIX_HR_EMP_MASTER E',
'    where M.EMP_CODE = E.EMP_CODE',
'ORDER BY M.MANAGER_ID;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Monthly Information'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13383792576081903)
,p_name=>'Monthly Information'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NARGIS'
,p_internal_uid=>13383792576081903
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13384404043081906)
,p_db_column_name=>'MANAGER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Manager ID'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_MANAGER_ID:#MANAGER_ID#'
,p_column_linktext=>'#MANAGER_ID#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13384811506081906)
,p_db_column_name=>'EMP_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Emp Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13385210428081906)
,p_db_column_name=>'MONTH'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13385696006081907)
,p_db_column_name=>'YEAR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13388072527081909)
,p_db_column_name=>'EMPLOYEE_CONTRIBUTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Employee Contribution'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13388435951081909)
,p_db_column_name=>'COMPANY_CONTRIBUTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Company Contribution'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14692458585624744)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>31
,p_is_primary_key=>'Y'
,p_column_identifier=>'M'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13409275048292313)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'134093'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MANAGER_ID:EMP_CODE:EMP_NAME:MONTH:YEAR:EMPLOYEE_CONTRIBUTION:COMPANY_CONTRIBUTION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13388945697081910)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13383670441081903)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--pillStart:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:8::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13389215297081910)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13383670441081903)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13389764502081911)
,p_event_id=>wwv_flow_imp.id(13389215297081910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13383670441081903)
);
wwv_flow_imp.component_end;
end;
/
