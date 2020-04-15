object DM_: TDM_
  OldCreateOrder = False
  Height = 321
  Width = 469
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    ClientCodepage = 'cp1251'
    Properties.Strings = (
      'codepage=cp1251')
    Connected = True
    HostName = 'db-pu01'
    Port = 3306
    Database = 'metz_bus_stops_01'
    User = 'metz'
    Password = '11223344'
    Protocol = 'MariaDB-10'
    Left = 32
    Top = 16
  end
  object zq_l1_up1: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'UPDATE schems_gbu SET gbu_state=2, date_req=current_date() WHERE' +
        ' gbu_state=1;')
    Params = <>
    Left = 136
    Top = 8
  end
  object zq_l2_req1: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'WITH A AS (SELECT id_district,name_gr_streets,id_gr_street,COUNT' +
        '(*) AS c_,SUM(p_output)AS p_output,'
      
        'SUM(g_output)AS g_output,SUM(oot_output)AS oot_output,SUM(trench' +
        ')AS trench,SUM(laythepipe)AS laythepipe,'
      'SUM(lay_cl)AS lay_cl,SUM(montage_al) AS montage_al,'
      'SUM(count_vrsh)AS count_vrsh'
      
        'FROM v_oot_rep001 WHERE id_district=:p_district AND (find_in_set' +
        '(id_exe,:p_t)>0) GROUP BY id_gr_street ),'
      
        'B AS (SELECT SUM(c_) AS c_,sum(p_output) AS p_output,SUM(g_outpu' +
        't)AS g_output,SUM(oot_output) AS oot_output,'
      
        'SUM(trench)AS trench, SUM(laythepipe)AS laythepipe, SUM(lay_cl)A' +
        'S lay_cl,SUM(montage_al)AS montage_al,SUM(count_vrsh) AS count_v' +
        'rsh FROM A)'
      ''
      
        'SELECT 1 AS t,id_district,id_gr_street,name_gr_streets,nn_oot,na' +
        'me_oot,'
      'direction,1 as c_,id_tu,agreed_res,tp_name,'
      'p_output,g_output,oot_output,null as per_output,'
      'trench,laythepipe,lay_cl,montage_al,count_vrsh,'
      'name_exe_short,ks_state'
      
        'FROM v_oot_rep001 WHERE id_district=:p_district AND (find_in_set' +
        '(id_exe,:p_t)>0)'
      'union'
      'SELECT'
      '2 AS t,'
      'id_district,'
      'id_gr_street,'
      'name_gr_streets,'
      'null AS nn_oot,'
      '"'#1048#1058#1054#1043#1054':" AS name_oot,'
      'NULL AS direction,'
      'c_,NULL AS id_tu,NULL AS agreed_res, NULL AS tp_name,'
      'p_output,g_output,oot_output,null as per_output,'
      'trench,laythepipe,lay_cl,montage_al,count_vrsh,'
      'NULL AS name_exe_short,NULL AS ks_state'
      ''
      'FROM A'
      'UNION'
      'select'
      '3 AS t,'
      '99 AS id_district,'
      'NULL AS id_gr_street,'
      'NULL AS name_gr_streets,'
      'NULL AS nn_oot,'
      '"'#1042#1057#1045#1043#1054' '#1048#1058#1054#1043#1054':" AS name_oot,'
      'NULL AS direction,'
      'c_,NULL AS id_tu,NULL AS agreed_res, NULL AS tp_name,'
      'p_output,g_output,oot_output,null as per_output,'
      'trench,laythepipe,lay_cl,montage_al,count_vrsh,'
      'NULL AS name_exe_short,NULL AS ks_state'
      ''
      'FROM B'
      ''
      ' ORDER BY id_district,name_gr_streets,t,name_oot'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'p_district'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_t'
        ParamType = ptUnknown
        Value = '1,2'
      end>
    Left = 24
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'p_district'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_t'
        ParamType = ptUnknown
        Value = '1,2'
      end>
  end
end
