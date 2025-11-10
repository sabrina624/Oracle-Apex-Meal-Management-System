prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Product Information'
,p_alias=>'PRODUCT-INFORMATION'
,p_step_title=>'Product Information'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22859742996731060)
,p_plug_name=>'Product Information'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.ROWID,',
'       P.PRODUCT_ID,',
'       P.PRODUCT_NAME,',
'       P.CATEGORY_NAME,',
'       u.UOM_ID,',
'       U.UOM_FULL_NAME,',
'       P.USER_ID,',
'       P.ENTRY_DATE,',
'       P.LAST_UPDATE,',
'       P.LAST_UPDATE_DATE',
'  from PHOENIX_PRODUCT P,PHOENIX_UOM U',
'  WHERE P.UOM_ID=U.UOM_ID'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"product_id","expr":"\"PRODUCT_ID\""},{"key":"product_name","expr":"\"PRODUCT_NAME\""}],"itemName":"P5_ORDER_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14691135462624731)
,p_region_id=>wwv_flow_imp.id(22859742996731060)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PRODUCT_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'UOM_FULL_NAME'
,p_body_adv_formatting=>false
,p_body_column_name=>'CATEGORY_NAME'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'PRODUCT_ID'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13348301650979353)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22859742996731060)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--simple:t-Button--pillStart'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'ORDER_BY_ITEM'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14692264226624742)
,p_name=>'P5_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22859742996731060)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'product_id'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Product Id;product_id,Product Name;product_name'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm:t-Form-fieldContainer--slimPadding:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13348918036979354)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22859742996731060)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13349426993979355)
,p_event_id=>wwv_flow_imp.id(13348918036979354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22859742996731060)
);
wwv_flow_imp.component_end;
end;
/
