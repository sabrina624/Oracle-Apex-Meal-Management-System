prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Daily Budget Tracker'
,p_alias=>'DAILY-BUDGET-TRACKER'
,p_step_title=>'Daily Budget Tracker'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14692361362624743)
,p_plug_name=>'Date Budget'
,p_title=>'Daily Budget'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25632538559575187)
,p_plug_name=>'Daily Budget Tracker'
,p_parent_plug_id=>wwv_flow_imp.id(14692361362624743)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    B.ROWID,',
'    B.TRACK_ID,',
'    B.MEAL_DATE,',
'    B.MONTH,',
'    B.YEAR,',
'    ',
'    -- Fetch live totals from Attendance table',
'    (SELECT COUNT(*) ',
'       FROM PHOENIX_DAILY_ATTENDANCE A ',
'      WHERE A.ATTENDANCE_DATE = B.MEAL_DATE ',
'        AND A.IS_TAKING_LUNCH = ''Y'') AS TOTAL_LUNCH_COUNT,',
'        ',
'    (SELECT COUNT(*) ',
'       FROM PHOENIX_DAILY_ATTENDANCE A ',
'      WHERE A.ATTENDANCE_DATE = B.MEAL_DATE ',
'        AND A.IS_TAKING_DINNER = ''Y'') AS TOTAL_DINNER_COUNT,',
'',
'    -- Existing columns',
'    B.TOTAL_MEALS,',
'    B.DAILY_MEAL_COST,',
'    B.COMPANY_SHARE,',
'    B.EMPLOYEE_SHARE,',
'    B.AVAILABLE_BUDGET,',
'    B.REMAINING_BUDGET,',
'    B.EXTRA_COST',
'FROM PHOENIX_DAILY_BUDGET_TRACKER B',
'ORDER BY B.MEAL_DATE;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Daily Budget Tracker'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(25632617011575187)
,p_name=>'Daily Budget Tracker'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'20'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NAYAN'
,p_internal_uid=>25632617011575187
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25633159063575230)
,p_db_column_name=>'TRACK_ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Track ID'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_TRACK_ID,P3_ROWID:#TRACK_ID#,#ROWID#'
,p_column_linktext=>'#TRACK_ID#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25633578292575231)
,p_db_column_name=>'MEAL_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Meal Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25634017932575231)
,p_db_column_name=>'TOTAL_LUNCH_COUNT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Lunch Count'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25634417829575232)
,p_db_column_name=>'TOTAL_DINNER_COUNT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Total Dinner Count'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25634781910575232)
,p_db_column_name=>'TOTAL_MEALS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Total Meals'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25635168096575232)
,p_db_column_name=>'DAILY_MEAL_COST'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Daily Meal Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25636041661575233)
,p_db_column_name=>'EMPLOYEE_SHARE'
,p_display_order=>16
,p_column_identifier=>'H'
,p_column_label=>'Employee Share'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25635565547575233)
,p_db_column_name=>'COMPANY_SHARE'
,p_display_order=>26
,p_column_identifier=>'G'
,p_column_label=>'Company Share'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25636377817575233)
,p_db_column_name=>'AVAILABLE_BUDGET'
,p_display_order=>36
,p_column_identifier=>'I'
,p_column_label=>'Available Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25636771099575234)
,p_db_column_name=>'REMAINING_BUDGET'
,p_display_order=>46
,p_column_identifier=>'J'
,p_column_label=>'Remaining Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25637252183575234)
,p_db_column_name=>'EXTRA_COST'
,p_display_order=>56
,p_column_identifier=>'K'
,p_column_label=>'Extra Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12857592345138731)
,p_db_column_name=>'MONTH'
,p_display_order=>76
,p_column_identifier=>'L'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12857683279138732)
,p_db_column_name=>'YEAR'
,p_display_order=>86
,p_column_identifier=>'M'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14691823926624738)
,p_db_column_name=>'ROWID'
,p_display_order=>96
,p_column_identifier=>'N'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(25659892773610379)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'124168'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRACK_ID:MEAL_DATE:MONTH:YEAR:TOTAL_MEALS:DAILY_MEAL_COST:COMPANY_SHARE:EMPLOYEE_SHARE:AVAILABLE_BUDGET:REMAINING_BUDGET:EXTRA_COST:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15377022682574709)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25632538559575187)
,p_button_name=>'Close_Month'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--simple:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close Month'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13248919925597256)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(25632538559575187)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--simple:t-Button--pillStart'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15376817928574707)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(25632538559575187)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15376905445574708)
,p_event_id=>wwv_flow_imp.id(15376817928574707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25632538559575187)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9793086451293825)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_CLOSE_MONTH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_last_month      NUMBER;',
'  v_last_year       NUMBER;',
'  v_next_month      NUMBER;',
'  v_next_year       NUMBER;',
'  v_last_remaining  NUMBER := 0;',
'  v_emp_fixed       NUMBER := 0;',
'  v_comp_fixed      NUMBER := 0;',
'  v_emp_count       NUMBER := 0;',
'  v_available       NUMBER := 0;',
'  v_exists          NUMBER := 0;',
'  v_next_date       DATE;',
'BEGIN',
'  ---------------------------------------------------------------------------',
unistr('  -- 1\FE0F\20E3 Get the latest (highest) month/year in the tracker'),
'  ---------------------------------------------------------------------------',
'  SELECT month, year',
'    INTO v_last_month, v_last_year',
'    FROM (',
'          SELECT month, year',
'            FROM PHOENIX_DAILY_BUDGET_TRACKER',
'           ORDER BY year DESC, month DESC',
'        )',
'   WHERE ROWNUM = 1;',
'',
'  ---------------------------------------------------------------------------',
unistr('  -- 2\FE0F\20E3 Get that month\2019s last remaining budget'),
'  ---------------------------------------------------------------------------',
'  BEGIN',
'    SELECT remaining_budget',
'      INTO v_last_remaining',
'      FROM (',
'            SELECT remaining_budget',
'              FROM PHOENIX_DAILY_BUDGET_TRACKER',
'             WHERE month = v_last_month AND year = v_last_year',
'             ORDER BY meal_date DESC',
'           )',
'     WHERE ROWNUM = 1;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      v_last_remaining := 0;',
'  END;',
'',
'  ---------------------------------------------------------------------------',
unistr('  -- 3\FE0F\20E3 Compute next month / year from the last record'),
'  ---------------------------------------------------------------------------',
'  IF v_last_month = 12 THEN',
'    v_next_month := 1;',
'    v_next_year  := v_last_year + 1;',
'  ELSE',
'    v_next_month := v_last_month + 1;',
'    v_next_year  := v_last_year;',
'  END IF;',
'',
'  v_next_date := TO_DATE(''01-''||v_next_month||''-''||v_next_year,''DD-MM-YYYY'');',
'',
'  ---------------------------------------------------------------------------',
unistr('  -- 4\FE0F\20E3 Skip if next month already exists'),
'  ---------------------------------------------------------------------------',
'  SELECT COUNT(*)',
'    INTO v_exists',
'    FROM PHOENIX_DAILY_BUDGET_TRACKER',
'   WHERE month = v_next_month AND year = v_next_year;',
'',
'  IF v_exists > 0 THEN',
'    APEX_ERROR.ADD_ERROR(',
unistr('      p_message          => ''\26A0\FE0F Month ''||v_next_month||''/''||v_next_year||'' already exists.'','),
'      p_display_location => APEX_ERROR.c_inline_in_notification',
'    );',
'    RETURN;',
'  END IF;',
'',
'  ---------------------------------------------------------------------------',
unistr('  -- 5\FE0F\20E3 Read contributions and employee count'),
'  ---------------------------------------------------------------------------',
'  BEGIN',
'  -- Fetch the latest employee and company contributions from the most recent record',
'  SELECT NVL(MAX(employee_contribution), 0),',
'         NVL(MAX(company_contribution), 0)',
'    INTO v_emp_fixed, v_comp_fixed',
'    FROM PHOENIX_MEAL_MANAGER',
'   WHERE (month, year) IN (',
'         SELECT month, year',
'           FROM PHOENIX_MEAL_MANAGER',
'          WHERE ROWNUM = 1',
'        );',
'   EXCEPTION',
'     WHEN NO_DATA_FOUND THEN',
'       v_emp_fixed := 0;',
'       v_comp_fixed := 0;',
'  END;',
'',
'  SELECT COUNT(*) INTO v_emp_count FROM PHOENIX_HR_EMP_MASTER;',
'',
'  ---------------------------------------------------------------------------',
unistr('  -- 6\FE0F\20E3 Compute new month\2019s opening available budget'),
'  ---------------------------------------------------------------------------',
'  v_available := (v_emp_fixed * v_emp_count)',
'                 + v_comp_fixed',
'                 + NVL(v_last_remaining,0);',
'',
'  ---------------------------------------------------------------------------',
unistr('  -- 7\FE0F\20E3 Insert the new opening record'),
'  ---------------------------------------------------------------------------',
'  INSERT INTO PHOENIX_DAILY_BUDGET_TRACKER (',
'      MEAL_DATE,',
'      MONTH,',
'      YEAR,',
'      AVAILABLE_BUDGET,',
'      REMAINING_BUDGET,',
'      EXTRA_COST,',
'      COMPANY_SHARE,',
'      EMPLOYEE_SHARE,',
'      TOTAL_MEALS,',
'      DAILY_MEAL_COST',
'  )',
'  VALUES (',
'      v_next_date,',
'      v_next_month,',
'      v_next_year,',
'      v_available,',
'      v_available,',
'      0,',
'      v_comp_fixed,',
'      v_emp_fixed,',
'      0,',
'      0',
'  );',
'',
'  COMMIT;',
'',
'  ---------------------------------------------------------------------------',
unistr('  -- 8\FE0F\20E3 Success message'),
'  ---------------------------------------------------------------------------',
'  APEX_ERROR.ADD_ERROR(',
unistr('    p_message          => ''\2705 Closed month ''||v_last_month||''/''||v_last_year||'),
'                          ''. Created opening for ''||TO_CHAR(v_next_date,''Mon YYYY'')||',
'                          '' with available ''||TO_CHAR(v_available,''999,999.00''),',
'    p_display_location => APEX_ERROR.c_inline_in_notification',
'  );',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(',
unistr('      p_message          => ''\274C Error closing month: ''||SQLERRM,'),
'      p_display_location => APEX_ERROR.c_inline_in_notification',
'    );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15377022682574709)
,p_process_success_message=>'Month closed. Next month selected; carry-forward will auto-apply on the first day.'
,p_internal_uid=>9793086451293825
);
wwv_flow_imp.component_end;
end;
/
