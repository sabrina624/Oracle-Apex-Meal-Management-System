prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 106
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1800582798131282
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'INTERN'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(13102580052794995)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>20317276
);
wwv_flow_imp.component_end;
end;
/
