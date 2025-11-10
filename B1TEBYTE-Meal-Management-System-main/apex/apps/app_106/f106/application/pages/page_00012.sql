prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_name=>'Daily Employee List'
,p_alias=>'DAILY-EMPLOYEE-LIST'
,p_step_title=>'Daily Employee List'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14923010097568533)
,p_plug_name=>'Daily Employee List'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE_ID,',
'       EMP_CODE,',
'       TO_CHAR(DATE_VALUE, ''MM/DD/YYYY'') AS DATE_VALUE,',
'       TOTAL_MEALS,',
'       PER_MEAL_COST,',
'       TOTAL_MEAL_COST,',
'       DUE,',
'       USER_ID,',
'       ENTER_DATE',
'  FROM INTERN.PHOENIX_DAILY_EMPLOYEE_INFORMATION',
' WHERE EMP_CODE = :P12_EMP_CODE',
'   AND DATE_VALUE BETWEEN TO_DATE(:P12_START_DATE, ''MM/DD/YYYY'')',
'                      AND TO_DATE(:P12_END_DATE, ''MM/DD/YYYY'')',
' ORDER BY DATE_VALUE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12_EMP_CODE,P12_START_DATE,P12_END_DATE'
,p_prn_page_header=>'Daily Employee List'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14923182252568533)
,p_name=>'Daily Employee List'
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
,p_internal_uid=>14923182252568533
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14923873336568567)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14924291299568567)
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
 p_id=>wwv_flow_imp.id(14925814885568569)
,p_db_column_name=>'TOTAL_MEALS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Total Meals'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14926233191568569)
,p_db_column_name=>'PER_MEAL_COST'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Per Meal Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14926646328568569)
,p_db_column_name=>'TOTAL_MEAL_COST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Total Meal Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14927050785568570)
,p_db_column_name=>'DUE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Due'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14927427720568570)
,p_db_column_name=>'USER_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12858409093138740)
,p_db_column_name=>'ENTER_DATE'
,p_display_order=>20
,p_column_identifier=>'P'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12858923308138745)
,p_db_column_name=>'DATE_VALUE'
,p_display_order=>50
,p_column_identifier=>'S'
,p_column_label=>'Date Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14932080821642040)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'149321'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_CODE:TOTAL_MEALS:PER_MEAL_COST:TOTAL_MEAL_COST:DUE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14690896770624728)
,p_button_sequence=>40
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--simple:t-Button--padLeft:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14690613192624726)
,p_name=>'P12_EMP_CODE'
,p_item_sequence=>10
,p_prompt=>'Emp Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT EMP_NAME, EMP_CODE FROM PHOENIX_HR_EMP_MASTER'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14690779147624727)
,p_name=>'P12_START_DATE'
,p_item_sequence=>20
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14692816782624748)
,p_name=>'P12_END_DATE'
,p_item_sequence=>30
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12858561107138741)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12858664986138742)
,p_event_id=>wwv_flow_imp.id(12858561107138741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14923010097568533)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12858758443138743)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_EMP_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12858837648138744)
,p_event_id=>wwv_flow_imp.id(12858758443138743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14923010097568533)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14690942842624729)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_emp_code     VARCHAR2(30) := :P12_EMP_CODE;',
'  v_start_date   DATE := TO_DATE(:P12_START_DATE);',
'  v_end_date     DATE := TO_DATE(:P12_END_DATE);',
'BEGIN',
'  /*-- Step 1: Delete any existing daily records for this employee within range',
'  DELETE FROM INTERN.PHOENIX_DAILY_EMPLOYEE_INFORMATION',
'   WHERE EMP_CODE = v_emp_code',
'     AND DATE_VALUE BETWEEN v_start_date AND v_end_date;*/',
'',
'  -- Step 2: Loop through attendance days within range',
'  FOR rec IN (',
'    SELECT ',
'      TRUNC(a.ATTENDANCE_DATE) AS MEAL_DATE,',
'      (CASE WHEN NVL(a.IS_TAKING_LUNCH, ''N'') = ''Y'' THEN 1 ELSE 0 END +',
'       CASE WHEN NVL(a.IS_TAKING_DINNER, ''N'') = ''Y'' THEN 1 ELSE 0 END) AS EMP_MEALS',
'    FROM INTERN.PHOENIX_DAILY_ATTENDANCE a',
'    WHERE a.EMP_CODE = v_emp_code',
'      AND a.ATTENDANCE_DATE BETWEEN v_start_date AND v_end_date',
'    ORDER BY a.ATTENDANCE_DATE',
'  ) LOOP',
'    DECLARE',
'      v_total_meals NUMBER := rec.EMP_MEALS;',
'      v_extra_cost  NUMBER := 0;',
'      v_per_cost    NUMBER := 0;',
'      v_all_meals   NUMBER := 0;',
'      v_due         NUMBER := 0;',
'      v_guest_cost  NUMBER := 0;',
'    BEGIN',
'      ----------------------------------------------------------------',
'      -- Step 3: Get budget info for that date',
'      ----------------------------------------------------------------',
'      BEGIN',
'        SELECT NVL(DAILY_MEAL_COST, 0),',
'               NVL(EXTRA_COST, 0),',
'               NVL(TOTAL_MEALS, 0)',
'          INTO v_per_cost, v_extra_cost, v_all_meals',
'          FROM INTERN.PHOENIX_DAILY_BUDGET_TRACKER',
'         WHERE MEAL_DATE= rec.MEAL_DATE;',
'      EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'          v_per_cost := 0;',
'          v_extra_cost := 0;',
'          v_all_meals := 0;',
'      END;',
'',
'      ----------------------------------------------------------------',
'      -- Step 4: Compute due (extra + guest cost)',
'      ----------------------------------------------------------------',
'      IF v_extra_cost > 0 AND v_all_meals > 0 AND v_total_meals > 0 THEN',
'        v_due := ROUND(v_extra_cost * (v_total_meals / v_all_meals), 2);',
'      END IF;',
'',
'      BEGIN',
'        SELECT NVL(SUM(TOTAL_GUEST_MEAL_COST), 0)',
'          INTO v_guest_cost',
'          FROM INTERN.PHOENIX_GUEST_MEAL_TRACKER',
'         WHERE EMP_CODE = v_emp_code',
'           AND TRUNC(GUEST_DATE) = rec.MEAL_DATE;',
'      EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'          v_guest_cost := 0;',
'      END;',
'',
'      v_due := v_due + v_guest_cost;',
'',
'      ----------------------------------------------------------------',
'      -- Step 5: Insert Final Row',
'      ----------------------------------------------------------------',
'      INSERT INTO INTERN.PHOENIX_DAILY_EMPLOYEE_INFORMATION (',
'        EMPLOYEE_ID,',
'        EMP_CODE,',
'        DATE_VALUE,',
'        TOTAL_MEALS,',
'        PER_MEAL_COST,',
'        TOTAL_MEAL_COST,',
'        DUE,',
'        USER_ID,',
'        ENTER_DATE',
'      ) VALUES (',
'        ''EDI-'' || LPAD(PHOENIX_DAILY_EMP_INFO_SEQ.NEXTVAL, 6, ''0''),',
'        v_emp_code,',
'        rec.MEAL_DATE,',
'        v_total_meals,',
'        v_per_cost,',
'        ROUND(v_total_meals * v_per_cost, 2),',
'        v_due,',
'        NVL(:APP_USER, USER),',
'        SYSDATE',
'      );',
'    END;',
'  END LOOP;',
'',
'  COMMIT;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    ROLLBACK;',
'    RAISE_APPLICATION_ERROR(-20001, ''Error processing daily data: '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>14690942842624729
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12859013279138746)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TEST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR C1 IS',
'    SELECT ',
'        A.ATTENDANCE_DATE,',
'',
'        -- Employee meal count',
'        (CASE WHEN NVL(A.IS_TAKING_LUNCH, ''N'') = ''Y'' THEN 1 ELSE 0 END +',
'         CASE WHEN NVL(A.IS_TAKING_DINNER, ''N'') = ''Y'' THEN 1 ELSE 0 END) AS EMP_MEALS,',
'',
'        -- Budget info',
'        NVL((SELECT B.DAILY_MEAL_COST',
'               FROM INTERN.PHOENIX_DAILY_BUDGET_TRACKER B',
'              WHERE B.MEAL_DATE = A.ATTENDANCE_DATE), 0) AS DAILY_MEAL_COST,',
'',
'        NVL((SELECT B.EXTRA_COST',
'               FROM INTERN.PHOENIX_DAILY_BUDGET_TRACKER B',
'              WHERE B.MEAL_DATE = A.ATTENDANCE_DATE), 0) AS EXTRA_COST,',
'',
'        NVL((SELECT B.TOTAL_MEALS',
'               FROM INTERN.PHOENIX_DAILY_BUDGET_TRACKER B',
'              WHERE B.MEAL_DATE = A.ATTENDANCE_DATE), 0) AS TOTAL_MEALS,',
'',
'        -- Guest meals (count only)',
'        NVL((SELECT SUM(G.GUEST_COUNT)',
'               FROM INTERN.PHOENIX_GUEST_MEAL_TRACKER G',
'              WHERE G.EMP_CODE = A.EMP_CODE',
'                AND TRUNC(G.GUEST_DATE) = TRUNC(A.ATTENDANCE_DATE)), 0) AS TOTAL_GUEST_COUNT',
'',
'    FROM INTERN.PHOENIX_DAILY_ATTENDANCE A',
'    WHERE A.EMP_CODE = :P12_EMP_CODE',
'      AND A.ATTENDANCE_DATE BETWEEN TO_DATE(:P12_START_DATE) AND TO_DATE(:P12_END_DATE)',
'    ORDER BY A.ATTENDANCE_DATE;',
'',
'BEGIN',
'  FOR I IN C1 LOOP',
'    DECLARE',
'      v_due NUMBER := 0;',
'      v_existing_count NUMBER := 0;',
'      v_guest_cost NUMBER := 0;',
'      v_per_meal NUMBER := 0;',
'    BEGIN',
'      ---------------------------------------------------------------------------',
'      -- Step 1: Fetch per meal cost for this date',
'      ---------------------------------------------------------------------------',
'      SELECT NVL(DAILY_MEAL_COST,0)',
'        INTO v_per_meal',
'        FROM INTERN.PHOENIX_DAILY_BUDGET_TRACKER',
'       WHERE MEAL_DATE = I.ATTENDANCE_DATE;',
'',
'      ---------------------------------------------------------------------------',
unistr('      -- Step 2: Calculate guest cost (even if table doesn\2019t store it)'),
'      ---------------------------------------------------------------------------',
'      SELECT NVL(SUM(NVL(G.TOTAL_GUEST_MEAL_COST,',
'                         NVL(G.GUEST_COUNT,0) * NVL(G.PER_MEAL_COST, v_per_meal))), 0)',
'        INTO v_guest_cost',
'        FROM INTERN.PHOENIX_GUEST_MEAL_TRACKER G',
'       WHERE G.EMP_CODE = :P12_EMP_CODE',
'         AND TRUNC(G.GUEST_DATE) = TRUNC(I.ATTENDANCE_DATE);',
'',
'      ---------------------------------------------------------------------------',
'      -- Step 3: Calculate due (extra portion + guest cost)',
'      ---------------------------------------------------------------------------',
'      IF I.EXTRA_COST > 0 AND I.TOTAL_MEALS > 0 THEN',
'        v_due := ROUND(I.EXTRA_COST * (I.EMP_MEALS / I.TOTAL_MEALS), 2);',
'      ELSE',
'        v_due := 0;',
'      END IF;',
'',
'      v_due := NVL(v_due, 0) + NVL(v_guest_cost, 0);',
'',
'      ---------------------------------------------------------------------------',
'      -- Step 4: Update or Insert record',
'      ---------------------------------------------------------------------------',
'      SELECT COUNT(*) INTO v_existing_count',
'        FROM INTERN.PHOENIX_DAILY_EMPLOYEE_INFORMATION',
'       WHERE EMP_CODE = :P12_EMP_CODE',
'         AND DATE_VALUE = I.ATTENDANCE_DATE;',
'',
'      IF v_existing_count > 0 THEN',
'        UPDATE INTERN.PHOENIX_DAILY_EMPLOYEE_INFORMATION',
'           SET TOTAL_MEALS = I.EMP_MEALS + NVL(I.TOTAL_GUEST_COUNT, 0),',
'               PER_MEAL_COST = v_per_meal,',
'               TOTAL_MEAL_COST = ROUND(v_per_meal * ',
'                                       (I.EMP_MEALS + NVL(I.TOTAL_GUEST_COUNT, 0)), 2),',
'               DUE = v_due,',
'               LAST_UPDATE = :APP_USER,',
'               LAST_UPDATE_DATE = SYSDATE',
'         WHERE EMP_CODE = :P12_EMP_CODE',
'           AND DATE_VALUE = I.ATTENDANCE_DATE;',
'      ELSE',
'        INSERT INTO INTERN.PHOENIX_DAILY_EMPLOYEE_INFORMATION (',
'            EMPLOYEE_ID,',
'            EMP_CODE,',
'            DATE_VALUE,',
'            TOTAL_MEALS,',
'            PER_MEAL_COST,',
'            TOTAL_MEAL_COST,',
'            DUE,',
'            USER_ID,',
'            ENTER_DATE',
'        )',
'        VALUES (',
'            ''EDI-'' || LPAD(PHOENIX_DAILY_EMP_INFO_SEQ.NEXTVAL, 6, ''0''),',
'            :P12_EMP_CODE,',
'            I.ATTENDANCE_DATE,',
'            I.EMP_MEALS + NVL(I.TOTAL_GUEST_COUNT, 0),',
'            v_per_meal,',
'            ROUND(v_per_meal * (I.EMP_MEALS + NVL(I.TOTAL_GUEST_COUNT, 0)), 2),',
'            v_due,',
'            :APP_USER,',
'            SYSDATE',
'        );',
'      END IF;',
'',
'      DBMS_OUTPUT.PUT_LINE(',
'        ''Date: '' || TO_CHAR(I.ATTENDANCE_DATE,''DD-MON'') ||',
'        '' | Guest Meals='' || I.TOTAL_GUEST_COUNT ||',
'        '' | Guest Cost='' || v_guest_cost ||',
'        '' | Due='' || v_due',
'      );',
'',
'    END;',
'  END LOOP;',
'',
'  COMMIT;',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'  WHEN OTHERS THEN',
'    ROLLBACK;',
'    RAISE_APPLICATION_ERROR(-20001, ''Error: '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14690896770624728)
,p_internal_uid=>12859013279138746
);
wwv_flow_imp.component_end;
end;
/
