prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>'Monthly Budget Information'
,p_alias=>'MONTHLY-BUDGET-INFORMATION'
,p_step_title=>'Monthly Budget Information'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25948994287270717)
,p_plug_name=>'Monthly Budget Information'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       BUDGET_ID,',
'       BUDGET_DATE,',
'       EMPLOYEE_CONTRIBUTION,',
'       COMPANY_CONTRIBUTION,',
'       EXTRA_DEDUCTION,',
'       TOTAL_EXPENSE,',
'       USER_ID,',
'       ENTRY_DATE,',
'       LAST_UPDATE,',
'       LAST_UPDATE_DATE,',
'       MONTH,',
'       YEAR,',
'       TOTAL_MEALS',
'  from PHOENIX_MONTHLY_BUDGET',
'  where month=:P16_MONTH',
'  and year=:P16_YEAR',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P16_MONTH,P16_YEAR'
,p_prn_page_header=>'Monthly Budget Information'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(25949040957270717)
,p_name=>'Monthly Budget Information'
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
,p_owner=>'ADMIN'
,p_internal_uid=>25949040957270717
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25949793010270721)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Budget ID'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_BUDGET_ID,P17_ROWID:#BUDGET_ID#,#ROWID#'
,p_column_linktext=>'#BUDGET_ID#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25950027891270721)
,p_db_column_name=>'BUDGET_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Budget Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25950428863270722)
,p_db_column_name=>'EMPLOYEE_CONTRIBUTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee Contribution'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25950910880270722)
,p_db_column_name=>'COMPANY_CONTRIBUTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Company Contribution'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25951304028270723)
,p_db_column_name=>'EXTRA_DEDUCTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Extra Deduction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25951645566270724)
,p_db_column_name=>'TOTAL_EXPENSE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Total Expense'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25952041726270725)
,p_db_column_name=>'USER_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'User ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25952500464270725)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25952899943270726)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25953258723270726)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23659932970543046)
,p_db_column_name=>'ROWID'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12857792117138733)
,p_db_column_name=>'MONTH'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12857875576138734)
,p_db_column_name=>'YEAR'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12857931332138735)
,p_db_column_name=>'TOTAL_MEALS'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Total Meals'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(25957264133314591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'120883'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUDGET_ID:BUDGET_DATE:MONTH:YEAR:TOTAL_MEALS:EMPLOYEE_CONTRIBUTION:COMPANY_CONTRIBUTION:EXTRA_DEDUCTION:TOTAL_EXPENSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14018150204354922)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25948994287270717)
,p_button_name=>'Generate_bill'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Bill'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9793107700293826)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(25948994287270717)
,p_button_name=>'BTN_DOWNLOAD_INVOICE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Invoice'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13873806015249285)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(25948994287270717)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14017980069354920)
,p_name=>'P16_MONTH'
,p_item_sequence=>10
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TO_DATE(LEVEL, ''MM''), ''Month'', ''NLS_DATE_LANGUAGE=ENGLISH'') AS display_value,',
'       LEVEL AS return_value',
'FROM dual',
'CONNECT BY LEVEL <= 12',
'ORDER BY LEVEL'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14018054946354921)
,p_name=>'P16_YEAR'
,p_item_sequence=>40
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(LEVEL + 2020) AS DISPLAY_VALUE,',
'       LEVEL + 2020 AS RETURN_VALUE',
'FROM DUAL',
'CONNECT BY LEVEL <= 11',
'ORDER BY RETURN_VALUE;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13874446864249297)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(25948994287270717)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13874908622249298)
,p_event_id=>wwv_flow_imp.id(13874446864249297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25948994287270717)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14691208070624732)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE BILL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_month_name        VARCHAR2(20) := INITCAP(:P16_MONTH);',
'  v_year_text         VARCHAR2(10) := :P16_YEAR;',
'  v_month             NUMBER;',
'  v_year              NUMBER;',
'  v_budget_id         VARCHAR2(15);',
'  v_emp_contri        NUMBER := 0;',
'  v_comp_contri       NUMBER := 0;',
'  v_extra_deduct      NUMBER := 0;',
'  v_total_meals       NUMBER := 0;',
'  v_total_expense     NUMBER := 0;',
'  v_emp_count         NUMBER := 0;',
'BEGIN',
'  --------------------------------------------------------------------',
unistr('  -- \D83E\DDEE Step 0: Convert Month Text to Number safely'),
'  --------------------------------------------------------------------',
'  BEGIN',
'    v_month := TO_NUMBER(:P16_MONTH);',
'    v_month_name := TO_CHAR(TO_DATE(v_month, ''MM''), ''Month'');',
'    v_year := TO_NUMBER(v_year_text);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      APEX_ERROR.ADD_ERROR(',
'        p_message => ''Invalid month name: '' || v_month_name,',
'        p_display_location => APEX_ERROR.c_inline_in_notification,',
'        p_page_item_name => ''P16_MONTH''',
'      );',
'      RETURN;',
'  END;',
'',
'  v_year := TO_NUMBER(v_year_text);',
'',
'  --------------------------------------------------------------------',
unistr('  -- \D83E\DDF9 Step 1: Delete old record for this month/year (if any)'),
'  --------------------------------------------------------------------',
'  DELETE FROM PHOENIX_MONTHLY_BUDGET',
'   WHERE MONTH = v_month',
'     AND YEAR  = v_year;',
'',
'  --------------------------------------------------------------------',
unistr('  -- \D83E\DDFE Step 2: Aggregate daily budget data'),
'  --------------------------------------------------------------------',
'  SELECT ',
'    NVL(SUM(TOTAL_MEALS), 0),',
'    NVL(SUM(EXTRA_COST), 0),',
'    NVL(MAX(EMPLOYEE_SHARE), 0),',
'    NVL(MAX(COMPANY_SHARE), 0)',
'  INTO ',
'    v_total_meals,',
'    v_extra_deduct,',
'    v_emp_contri,',
'    v_comp_contri',
'  FROM PHOENIX_DAILY_BUDGET_TRACKER',
'  WHERE EXTRACT(MONTH FROM MEAL_DATE) = v_month',
'    AND EXTRACT(YEAR  FROM MEAL_DATE) = v_year;',
'',
'  --------------------------------------------------------------------',
unistr('  -- \D83D\DCB0 Step 3: Calculate total expense'),
'  --------------------------------------------------------------------',
'  v_total_expense := v_emp_contri + v_comp_contri + v_extra_deduct;',
'',
'  --------------------------------------------------------------------',
unistr('  -- \D83C\DD94 Step 4: Generate Budget ID and Insert'),
'  --------------------------------------------------------------------',
'  v_budget_id := ''BDG-'' || LPAD(PHOENIX_MONTHLY_BUDGET_SEQ.NEXTVAL, 6, ''0'');',
'',
'  INSERT INTO PHOENIX_MONTHLY_BUDGET (',
'      BUDGET_ID,',
'      BUDGET_DATE,',
'      MONTH,',
'      YEAR,',
'      EMPLOYEE_CONTRIBUTION,',
'      COMPANY_CONTRIBUTION,',
'      EXTRA_DEDUCTION,',
'      TOTAL_EXPENSE,',
'      TOTAL_MEALS,',
'      USER_ID,',
'      ENTRY_DATE',
'  )',
'  VALUES (',
'      v_budget_id,',
'      TRUNC(SYSDATE),',
'      v_month,',
'      v_year,',
'      v_emp_contri,',
'      v_comp_contri,',
'      v_extra_deduct,',
'      v_total_expense,',
'      v_total_meals,',
'      :APP_USER,',
'      SYSDATE',
'  );',
'',
'  COMMIT;',
'',
unistr('APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''\2705 Bill generated successfully for '' || v_month_name || '' '' || v_year;'),
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(',
'      p_message => ''Error generating bill: '' || SQLERRM,',
'      p_display_location => APEX_ERROR.c_inline_in_notification',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14691208070624732
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9793435262293829)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Monthly Invoice PDF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_month       NUMBER := TO_NUMBER(:P16_MONTH);',
'  v_year        NUMBER := TO_NUMBER(:P16_YEAR);',
'  v_month_name  VARCHAR2(20) := TO_CHAR(TO_DATE(v_month, ''MM''), ''FMMonth'');',
'  v_file_name   VARCHAR2(120);',
'  v_export      APEX_DATA_EXPORT.T_EXPORT;',
'  v_context     APEX_EXEC.T_CONTEXT;',
'  v_cnt         NUMBER;',
'  v_sql         CLOB;',
'BEGIN',
'  ---------------------------------------------------------------------',
'  -- Step 1: Check data exists for selected month/year',
'  ---------------------------------------------------------------------',
'  SELECT COUNT(*) INTO v_cnt',
'  FROM PHOENIX_MONTHLY_BUDGET',
'  WHERE MONTH = v_month AND YEAR = v_year;',
'',
'  IF v_cnt = 0 THEN',
'    APEX_ERROR.ADD_ERROR(',
'      p_message          => ''No invoice data found for '' || v_month_name || '' '' || v_year || ''.'',',
'      p_display_location => APEX_ERROR.c_inline_in_notification',
'    );',
'    RETURN;',
'  END IF;',
'',
'  ---------------------------------------------------------------------',
'  -- Step 2: Build SQL dynamically (no bind types needed)',
'  ---------------------------------------------------------------------',
'  v_sql :=',
'    ''SELECT',
'       BUDGET_ID,',
'       TO_CHAR(BUDGET_DATE, ''''DD-Mon-YYYY'''')            AS "Budget Date",',
'       TOTAL_MEALS                                      AS "Total Meals",',
'       EMPLOYEE_CONTRIBUTION                            AS "Employee Contribution",',
'       COMPANY_CONTRIBUTION                             AS "Company Contribution",',
'       EXTRA_DEDUCTION                                  AS "Extra Deduction",',
'       TOTAL_EXPENSE                                    AS "Total Expense",',
'       USER_ID                                          AS "Generated By",',
'       TO_CHAR(ENTRY_DATE, ''''DD-Mon-YYYY HH24:MI'''')     AS "Generated On"',
'     FROM PHOENIX_MONTHLY_BUDGET',
'     WHERE MONTH = '' || v_month || '' AND YEAR = '' || v_year;',
'',
'  ---------------------------------------------------------------------',
'  -- Step 3: Open query context and export',
'  ---------------------------------------------------------------------',
'  v_context := APEX_EXEC.OPEN_QUERY_CONTEXT(',
'    p_location  => APEX_EXEC.C_LOCATION_LOCAL_DB,',
'    p_sql_query => v_sql',
'  );',
'',
'  v_export := APEX_DATA_EXPORT.EXPORT(',
'    p_context     => v_context,',
'    p_format      => APEX_DATA_EXPORT.C_FORMAT_PDF,',
'    p_file_name   => ''BiteByte_Invoice_'' || v_month_name || ''_'' || v_year || ''.pdf'',',
'    p_page_header => ''B1TEBYTE | Monthly Meal Invoice - '' || v_month_name || '' '' || v_year,',
unistr('    p_page_footer => ''\00A9 2025 BiteByte Meal Management System | Created By: Nayan, Nargis, Mishal, Sabrina'''),
'  );',
'',
'  ---------------------------------------------------------------------',
'  -- Step 4: Close context and stream PDF',
'  ---------------------------------------------------------------------',
'  APEX_EXEC.CLOSE(v_context);',
'  APEX_DATA_EXPORT.DOWNLOAD(v_export);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9793107700293826)
,p_internal_uid=>9793435262293829
);
wwv_flow_imp.component_end;
end;
/
