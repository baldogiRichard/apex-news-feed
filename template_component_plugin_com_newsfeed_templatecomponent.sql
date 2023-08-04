prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>31247972357692975900
,p_default_application_id=>238969
,p_default_id_offset=>42220738407981870810
,p_default_owner=>'WKSP_RMZRT'
);
end;
/
 
prompt APPLICATION 238969 - APEX Plug-ins by Richard Baldogi - dropdown
--
-- Application Export:
--   Application:     238969
--   Name:            APEX Plug-ins by Richard Baldogi - dropdown
--   Date and Time:   13:43 Friday August 4, 2023
--   Exported By:     BALDOGI.RICHARD
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 86166538110692518551
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_newsfeed_templatecomponent
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(86166538110692518551)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.NEWSFEED.TEMPLATECOMPONENT'
,p_display_name=>'News Feed'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_css_file_urls=>'#PLUGIN_FILES#style/style.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'  <div>',
'    <div>',
'      <div>',
'        <div class="post">',
'          <meta content="#IMAGE_URL#">',
'          <h2 class="post-title">',
'            <a>#TITLE#</a>',
'          </h2>',
'            <div class="postmeta-primary">',
'                {if AUTHOR/}',
'                <span class="meta_author">',
'                    <span class="info-padding">#AUTHOR#</span>',
'                    <a class="fa fa-user fa-color"></a>',
'                </span>',
'                {endif/}',
'                {if DATE/}',
'                <span class="meta_date">',
'                    <span class="info-padding">#DATE#</span>',
'                    <a class="fa fa-calendar-o fa-color"></a>',
'                </span>',
'                {endif/}',
'                {if COMMENTS/}',
'                <span class="meta_comments">',
'                    <span class="info-padding">#COMMENTS#</span>',
'                    <a class="fa fa-comments comment-link fa-color"></a>',
'                </span>',
'                {endif/}',
'                <span class="meta_categories">',
'                    <ul class="a-tags">',
'                    {loop "," CATEGORIES/}',
'                        <li class="a-tag fa fa-tag" style="display:unset">&APEX$ITEM.</li>',
'                    {endloop/}',
'                    </ul>',
'                </span>',
'            </div>',
'            <div class="post-body">',
'                <div>',
'                    {if IMAGE_URL/}<img src="#IMAGE_URL#" class="pbtthumbimg">{endif/}',
'                    <div class="news-feed-description">#DESCRIPTION#</div>',
'                    {if APEX$HAS_ACTION_BUTTONS/}',
'                        {if READ_MORE/}<div class="read-more">#READ_MORE#</div>{endif/}',
'                        {if SOCIAL/}<div class="pbt-share-buttons">#SOCIAL#</div>{endif/}',
'                    {endif/}',
'                </div>',
'          </div>',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'{else/}',
'  <ul>#APEX$ROWS#</ul>',
'{endif/}'))
,p_report_row_template=>'<li class="news-feed-row" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/baldogiRichard/apex-news-feed'
,p_files_version=>77
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(92588015855089540020)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_title=>'Content'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(92588016331073540021)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_title=>'Information'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(86194624129170950109)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'AUTHOR'
,p_prompt=>'Author'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(92588016331073540021)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(86194624511768950110)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'COMMENTS'
,p_prompt=>'Comments'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(92588016331073540021)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(86194624937010950110)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(92588016331073540021)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(86194625303359950110)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(92588015855089540020)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(86194626050291950110)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'IMAGE_URL'
,p_prompt=>'Image URL'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(92588015855089540020)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(86194627697144950111)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(92588015855089540020)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(92207357588594829618)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'CATEGORIES'
,p_prompt=>'Categories'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(92588016331073540021)
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(92260460191059116803)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_name=>'SOCIAL_BUTTON'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="rw-Button rw-Button--borderless rw-Button--icon" {if IS_DISABLED/}disabled{endif/} type="button" data-menu="#MENU_ID#">',
'  <span class="rw-Button-label">',
'    <span class="rw-Button-icon oj-ux-ico-overflow-h" aria-hidden="true"></span>',
'    <span class="rw-Button-text">#LABEL#</span>',
'  </span>',
'</button> #MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(92540515052696950250)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_name=>'READ_MORE_BUTTON'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK_URL#" title="#LABEL!ATTR#" #LINK_ATTR# {if IS_DISABLED/}disabled{endif/}>',
'  <button class="t-Button t-Button--icon #CSS_CLASSES# {if IS_HOT/}t-Button--hot{endif/}" type="button" >',
'      <span class="t-Button-label">#LABEL#</span>',
'  </button>',
'</a>'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(92539390463544776119)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_name=>'Social'
,p_static_id=>'SOCIAL'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(92260460191059116803)
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(92541050956693956050)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_name=>'Read More'
,p_static_id=>'READ_MORE'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(92540515052696950250)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E706F73747B6D617267696E2D626F74746F6D3A313570783B626F726465722D626F74746F6D3A31707820736F6C696420236434636663617D2E706F73742D7469746C657B636F6C6F723A233861373736323B6D617267696E3A30203020313070783B70';
wwv_flow_imp.g_varchar2_table(2) := '616464696E673A303B666F6E743A32327078224F7377616C64222C73616E732D73657269663B6C696E652D6865696768743A312E317D2E706F73742D7469746C6520612C2E706F73742D7469746C6520613A766973697465642C2E706F73742D7469746C';
wwv_flow_imp.g_varchar2_table(3) := '65207374726F6E677B646973706C61793A626C6F636B3B746578742D6465636F726174696F6E3A6E6F6E653B636F6C6F723A233861373736327D2E706F73746D6574612D7072696D6172797B636F6C6F723A233861373736323B6C696E652D6865696768';
wwv_flow_imp.g_varchar2_table(4) := '743A312E3338343B70616464696E673A30203020313070783B666F6E742D66616D696C793A4F7377616C647D2E6D6574615F617574686F722C2E6D6574615F63617465676F726965732C2E6D6574615F636F6D6D656E74732C2E6D6574615F646174657B';
wwv_flow_imp.g_varchar2_table(5) := '6261636B67726F756E643A6E6F2D7265706561742072696768742063656E7465723B70616464696E672D72696768743A313070783B6D617267696E2D72696768743A313070783B626F726465722D72696768743A31707820736F6C69647D2E636F6D6D65';
wwv_flow_imp.g_varchar2_table(6) := '6E742D6C696E6B7B6D617267696E2D6C6566743A307D2E706F73742D626F64797B6D617267696E3A303B70616464696E673A303B6C696E652D6865696768743A312E373B6F766572666C6F773A68696464656E7D2E706F73742D626F647920696D677B70';
wwv_flow_imp.g_varchar2_table(7) := '616464696E673A3370783B6865696768743A6175746F7D2E7062747468756D62696D677B666C6F61743A6C6566743B6D617267696E3A3020313070782035707820303B70616464696E673A34707821696D706F7274616E743B77696474683A3230307078';
wwv_flow_imp.g_varchar2_table(8) := '3B6865696768743A6175746F3B626F726465722D7261646975733A313570787D2E7062742D73686172652D627574746F6E737B6F766572666C6F773A68696464656E3B70616464696E673A35707820303B6D617267696E3A303B666C6F61743A6C656674';
wwv_flow_imp.g_varchar2_table(9) := '7D2E7062742D73686172652D627574746F6E7320617B70616464696E673A3570783B666F6E742D73697A653A313070783B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B2D6D6F7A2D626F782D73697A696E673A626F726465';
wwv_flow_imp.g_varchar2_table(10) := '722D626F783B626F782D73697A696E673A626F726465722D626F783B77696474683A323070783B6865696768743A323070783B646973706C61793A696E6C696E652D626C6F636B3B6261636B67726F756E643A233333333B636F6C6F723A236666662169';
wwv_flow_imp.g_varchar2_table(11) := '6D706F7274616E743B6D617267696E3A302034707820327078203270783B6C696E652D6865696768743A3130707821696D706F7274616E743B746578742D616C69676E3A63656E7465727D2E6E6577732D666565642D726F777B6C6973742D7374796C65';
wwv_flow_imp.g_varchar2_table(12) := '2D747970653A6E6F6E657D2E6E6577732D666565642D6465736372697074696F6E7B776F72642D627265616B3A627265616B2D776F72643B70616464696E673A313070787D2E726561642D6D6F72657B70616464696E673A3570787D2E696E666F2D7061';
wwv_flow_imp.g_varchar2_table(13) := '6464696E677B70616464696E672D72696768743A3570787D2E612D746167737B6C6973742D7374796C653A6E6F6E653B6D617267696E3A303B646973706C61793A756E7365747D2E612D7461677B6261636B67726F756E642D636F6C6F723A766172282D';
wwv_flow_imp.g_varchar2_table(14) := '2D612D63762D7375627469746C652D746578742D636F6C6F72293B636F6C6F723A236666663B626F726465722D7261646975733A3570783B70616464696E673A3570783B6D617267696E3A3370783B646973706C61793A696E6C696E657D2E66612D636F';
wwv_flow_imp.g_varchar2_table(15) := '6C6F727B636F6C6F723A766172282D2D612D63762D7375627469746C652D746578742D636F6C6F72297D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(47644818614518829824)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_file_name=>'style/style.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A4E657773466565642A2F0D0A2E706F7374207B0D0A202020206D617267696E2D626F74746F6D3A20313570783B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236434636663613B0D0A202020207D0D0A202020200D';
wwv_flow_imp.g_varchar2_table(2) := '0A2E706F73742D7469746C65207B0D0A20202020636F6C6F723A20233861373736323B0D0A202020206D617267696E3A20302030203130707820303B0D0A2020202070616464696E673A20303B0D0A20202020666F6E743A206E6F726D616C206E6F726D';
wwv_flow_imp.g_varchar2_table(3) := '616C203232707820274F7377616C64272C73616E732D73657269663B0D0A202020206C696E652D6865696768743A20312E313B0D0A7D0D0A0D0A2E706F73742D7469746C6520612C2E706F73742D7469746C6520613A766973697465642C2E706F73742D';
wwv_flow_imp.g_varchar2_table(4) := '7469746C65207374726F6E67207B0D0A20202020646973706C61793A20626C6F636B3B0D0A20202020746578742D6465636F726174696F6E3A206E6F6E653B0D0A20202020636F6C6F723A20233861373736323B0D0A7D0D0A0D0A2E706F73746D657461';
wwv_flow_imp.g_varchar2_table(5) := '2D7072696D617279207B0D0A20202020636F6C6F723A20233861373736323B0D0A202020206C696E652D6865696768743A20312E3338343B0D0A2020202070616464696E673A2030203020313070783B0D0A20202020666F6E742D66616D696C793A204F';
wwv_flow_imp.g_varchar2_table(6) := '7377616C643B0D0A7D0D0A0D0A2E6D6574615F617574686F722C202E6D6574615F646174652C202E6D6574615F63617465676F726965732C202E6D6574615F636F6D6D656E7473207B0D0A202020206261636B67726F756E643A206E6F2D726570656174';
wwv_flow_imp.g_varchar2_table(7) := '2072696768742063656E7465723B0D0A2020202070616464696E672D72696768743A20313070783B0D0A202020206D617267696E2D72696768743A20313070783B0D0A20202020626F726465722D72696768743A2031707820736F6C69643B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(8) := '0D0A2E636F6D6D656E742D6C696E6B207B0D0A202020206D617267696E2D6C6566743A20303B0D0A7D0D0A0D0A2E706F73742D626F6479207B0D0A202020206D617267696E3A20303B0D0A2020202070616464696E673A20302030203020303B0D0A2020';
wwv_flow_imp.g_varchar2_table(9) := '20206C696E652D6865696768743A20312E373B0D0A202020206F766572666C6F773A2068696464656E3B0D0A7D0D0A0D0A2E706F73742D626F647920696D67207B0D0A2020202070616464696E673A203370783B0D0A202020206865696768743A206175';
wwv_flow_imp.g_varchar2_table(10) := '746F3B0D0A7D0D0A0D0A2E7062747468756D62696D67207B0D0A20202020666C6F61743A206C6566743B0D0A202020206D617267696E3A203020313070782035707820303B0D0A2020202070616464696E673A2034707821696D706F7274616E743B0D0A';
wwv_flow_imp.g_varchar2_table(11) := '2020202077696474683A2032303070783B0D0A202020206865696768743A206175746F3B0D0A20202020626F726465722D7261646975733A20313570783B0D0A7D0D0A0D0A2E7062742D73686172652D627574746F6E73207B0D0A202020206F76657266';
wwv_flow_imp.g_varchar2_table(12) := '6C6F773A2068696464656E3B0D0A2020202070616464696E673A2035707820303B0D0A202020206D617267696E3A20303B0D0A20202020666C6F61743A206C6566743B0D0A7D0D0A202020200D0A2E7062742D73686172652D627574746F6E732061207B';
wwv_flow_imp.g_varchar2_table(13) := '0D0A2020202070616464696E673A203570783B0D0A20202020666F6E742D73697A653A20313070783B0D0A202020202D7765626B69742D626F782D73697A696E673A20626F726465722D626F783B0D0A202020202D6D6F7A2D626F782D73697A696E673A';
wwv_flow_imp.g_varchar2_table(14) := '20626F726465722D626F783B0D0A20202020626F782D73697A696E673A20626F726465722D626F783B0D0A2020202077696474683A20323070783B0D0A202020206865696768743A20323070783B0D0A20202020646973706C61793A20696E6C696E652D';
wwv_flow_imp.g_varchar2_table(15) := '626C6F636B3B0D0A202020206261636B67726F756E643A20233333333B0D0A20202020636F6C6F723A20236666662021696D706F7274616E743B0D0A202020206D617267696E3A20302034707820327078203270783B0D0A202020206C696E652D686569';
wwv_flow_imp.g_varchar2_table(16) := '6768743A20313070782021696D706F7274616E743B0D0A20202020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2E6E6577732D666565642D726F77207B0D0A202020206C6973742D7374796C652D747970653A206E6F6E653B0D0A7D';
wwv_flow_imp.g_varchar2_table(17) := '0D0A0D0A2E6E6577732D666565642D6465736372697074696F6E207B0D0A20202020776F72642D627265616B3A20627265616B2D776F72643B0D0A2020202070616464696E673A20313070783B0D0A7D0D0A0D0A2E726561642D6D6F7265207B0D0A2020';
wwv_flow_imp.g_varchar2_table(18) := '202070616464696E673A203570783B0D0A7D0D0A0D0A2E696E666F2D70616464696E67207B0D0A2020202070616464696E672D72696768743A203570783B0D0A7D0D0A0D0A2F2A546167732A2F0D0A2E612D74616773207B0D0A202020206C6973742D73';
wwv_flow_imp.g_varchar2_table(19) := '74796C653A206E6F6E653B0D0A202020206D617267696E3A20303B0D0A20202020646973706C61793A20756E7365743B0D0A7D0D0A2E612D746167207B0D0A202020206261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D73756274';
wwv_flow_imp.g_varchar2_table(20) := '69746C652D746578742D636F6C6F72293B0D0A20202020636F6C6F723A2077686974653B0D0A20202020626F726465722D7261646975733A203570783B0D0A2020202070616464696E673A203570783B0D0A202020206D617267696E3A203370783B0D0A';
wwv_flow_imp.g_varchar2_table(21) := '20202020646973706C61793A20696E6C696E653B0D0A7D0D0A0D0A2F2A46617669636F6E2A2F0D0A2E66612D636F6C6F72207B0D0A202020636F6C6F723A20766172282D2D612D63762D7375627469746C652D746578742D636F6C6F72293B0D0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(92223324163790084508)
,p_plugin_id=>wwv_flow_imp.id(86166538110692518551)
,p_file_name=>'style/style.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
