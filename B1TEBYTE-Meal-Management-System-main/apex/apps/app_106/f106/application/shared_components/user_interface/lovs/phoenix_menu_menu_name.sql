prompt --application/shared_components/user_interface/lovs/phoenix_menu_menu_name
begin
--   Manifest
--     PHOENIX_MENU.MENU_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1800582798131282
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'INTERN'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13371354654081884)
,p_lov_name=>'PHOENIX_MENU.MENU_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PHOENIX_MENU'
,p_return_column_name=>'MENU_ID'
,p_display_column_name=>'MENU_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'MENU_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>20650799
);
wwv_flow_imp.component_end;
end;
/
