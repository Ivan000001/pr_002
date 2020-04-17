object DM_: TDM_
  OldCreateOrder = False
  Height = 781
  Width = 783
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    ClientCodepage = 'cp1251'
    Properties.Strings = (
      'codepage=cp1251')
    Connected = True
    HostName = 'db-01'
    Port = 3306
    Database = 'metz_bus_stops_01'
    User = 'metz'
    Password = '11223344'
    Protocol = 'MariaDB-10'
    Left = 24
    Top = 8
  end
  object zq_cb_districts: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT 0 AS id_district,"'#1042#1089#1077'" AS d_short_name'
      'UNION'
      
        'SELECT districts.id_district,districts.d_short_name FROM distric' +
        'ts')
    Params = <>
    Left = 24
    Top = 64
  end
  object DS_cb_districts: TDataSource
    DataSet = zq_cb_districts
    OnDataChange = DS_cb_districtsDataChange
    Left = 80
    Top = 64
  end
  object DS_cb_gr_streets: TDataSource
    DataSet = zq_cb_gr_streets
    Left = 72
    Top = 120
  end
  object DS_oot: TDataSource
    DataSet = zq_oot
    Left = 328
    Top = 24
  end
  object zq_cb_gr_streets: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT 0 AS id_gr_street,"'#1042#1089#1077'" AS name_gr_streets from dual'
      'UNION'
      'SELECT id_gr_street,name_gr_streets FROM group_streets'
      'WHERE (:p_districts=0 or  id_district_a=:p_districts)'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'p_districts'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 24
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'p_districts'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object zq_oot: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from v_oot'
      'where (:p_districts=0 or :p_districts=id_district) and'
      '(:p_gr_streets=0 or :p_gr_streets=id_gr_street) and'
      '(:p_exe=0 or :p_exe=id_exe) and'
      
        '(:p_schema_check=0 or (:p_schema_check=10 and (agreed_res=0 or a' +
        'greed_res is null)) or(:p_schema_check=11 and agreed_res=1)) and'
      
        '(:p_ready=0 or (:p_ready=10 and job_state=0) or (:p_ready=11 and' +
        ' job_state=1))'
      ''
      '')
    Params = <
      item
        DataType = ftString
        Name = 'p_districts'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_gr_streets'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_exe'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_schema_check'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_ready'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 280
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'p_districts'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_gr_streets'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_exe'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_schema_check'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'p_ready'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object zq_cb_exe: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT 0 AS id_exe,"'#1042#1089#1077'" AS name_exe_short'
      'union'
      'SELECT id_exe,name_exe_short FROM executors')
    Params = <>
    Left = 24
    Top = 160
  end
  object zq_cb_schema_check: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT 0 AS id_check,"'#1042#1089#1077'" AS descr'
      'union'
      'SELECT 11 AS id_check,"'#1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086'" AS descr'
      'UNION'
      'SELECT 10 AS id_check,"'#1053#1077' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086'" AS descr')
    Params = <>
    Left = 24
    Top = 208
  end
  object zq_cb_ready: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT 0 AS id_check,"'#1042#1089#1077'" AS descr'
      'union'
      'SELECT 11 AS id_check,"'#1042#1099#1087#1086#1083#1085#1077#1085#1086'" AS descr'
      'UNION'
      'SELECT 10 AS id_check,"'#1053#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1086'" AS descr')
    Params = <>
    Left = 24
    Top = 248
  end
  object zq_oot_cb_districts: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select id_district,d_short_name from districts')
    Params = <>
    Left = 32
    Top = 376
  end
  object zq_oot_cb_gr_streets: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select id_gr_street,name_gr_streets from group_streets')
    Params = <>
    Left = 32
    Top = 424
  end
  object DS_cb_exe: TDataSource
    DataSet = zq_cb_exe
    Left = 72
    Top = 168
  end
  object DS_cb_schema_check: TDataSource
    DataSet = zq_cb_schema_check
    Left = 72
    Top = 208
  end
  object DS_cb_ready: TDataSource
    DataSet = zq_cb_ready
    Left = 72
    Top = 248
  end
  object DS_oot_cb_districts: TDataSource
    DataSet = zq_oot_cb_districts
    Left = 72
    Top = 376
  end
  object DS_oot_cb_gr_streets: TDataSource
    DataSet = zq_oot_cb_gr_streets
    Left = 72
    Top = 432
  end
  object zq_oot_cb_exe: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select 0 as id_exe, "'#1053#1077#1080#1079#1074#1077#1089#1090#1085#1086'" as name_exe_short '
      'union '
      'select id_exe, name_exe_short from executors')
    Params = <>
    Left = 24
    Top = 480
  end
  object DS_oot_cb_exe: TDataSource
    DataSet = zq_oot_cb_exe
    Left = 72
    Top = 480
  end
  object zq_oot_cb_schems: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select 0 as id_schema, "'#1085#1077#1090'" as name_schema'
      'union'
      'select id_schema, name_schema from schems')
    Params = <>
    Left = 24
    Top = 584
  end
  object zq_oot_cb_tu: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select 0 as id_doc, "'#1085#1077#1090'" as id_tu'
      'union'
      'select id_doc,id_tu from docs')
    Params = <>
    Left = 24
    Top = 536
  end
  object zq_tp_points: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tp_point order by tp_name')
    Params = <>
    Left = 288
    Top = 160
  end
  object DS_oot_cb_tu: TDataSource
    DataSet = zq_oot_cb_tu
    Left = 72
    Top = 536
  end
  object DS_oot_cb_schems: TDataSource
    DataSet = zq_oot_cb_schems
    Left = 80
    Top = 584
  end
  object DS_tp_points: TDataSource
    DataSet = zq_tp_points
    Left = 328
    Top = 160
  end
  object zq_oot_rec_get: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      ' oot.id_oot,'
      ' districts.id_district,'
      ' oot.id_gr_street_a AS id_gr_street,'
      ' oot.nn_oot,'
      ' oot.type_oot,'
      ' oot.name_oot,'
      ' oot.direction,'
      ' oot.address,'
      ' oot.gps_lat,'
      ' oot.gps_long,'
      ' oot.id_doc_a,'
      ' oot.id_exe_a,'
      ' oot.id_schema_a AS id_schema,'
      ' oot.job_state,'
      ' oot.p_output,'
      ' oot.where_output,'
      'oot.trench  AS trench,'
      'oot.laythepipe AS laythepipe,'
      'oot.lay_cl AS lay_cl,'
      'oot.montage_al AS montage_al,'
      ' oot.count_VRSH'
      'from oot'
      
        'left join group_streets ON group_streets.id_gr_street = oot.id_g' +
        'r_street_a'
      
        'left join districts ON districts.id_district = group_streets.id_' +
        'district_a'
      'left join docs ON docs.id_doc = oot.id_doc_a'
      'left join executors ON executors.id_exe = oot.id_exe_a'
      'left join schems ON schems.id_schema=oot.id_schema_a'
      'where (:p_oot = id_oot)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'p_oot'
        ParamType = ptUnknown
      end>
    Left = 280
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_oot'
        ParamType = ptUnknown
      end>
  end
  object zq_TMP: TZReadOnlyQuery
    Connection = ZConnection1
    Params = <>
    Left = 704
    Top = 24
  end
  object zq_schems: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      'id_schema,'
      'name_schema,'
      'agreed_res,'
      'id_tp_point_a,'
      'tp_name,'
      'type_input,'
      'get_job_state_for_schems(id_schema) AS state'
      ''
      'FROM schems'
      'LEFT JOIN tp_point ON tp_point.id_tp_point=schems.id_tp_point_a')
    Params = <>
    Left = 288
    Top = 224
  end
  object zq_schems_oot: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      
        'id_oot,nn_oot,name_oot,direction,address,job_state,id_tu,executo' +
        'rs.name_exe_short'
      'FROM oot'
      'LEFT JOIN executors ON executors.id_exe=oot.id_exe_a'
      'left join docs on docs.id_doc=oot.id_doc_a'
      'WHERE id_schema_a=:p_schema')
    Params = <
      item
        DataType = ftString
        Name = 'p_schema'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 288
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'p_schema'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object zq_cb_tp: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select 0 as id_tp_point,"'#1085#1077#1090'" as tp_name'
      'union'
      '(select id_tp_point, tp_name from tp_point order by tp_name)')
    Params = <>
    Left = 280
    Top = 376
  end
  object DS_schems: TDataSource
    DataSet = zq_schems
    OnDataChange = DS_schemsDataChange
    Left = 336
    Top = 224
  end
  object DS_schems_oot: TDataSource
    DataSet = zq_schems_oot
    Left = 336
    Top = 288
  end
  object DS_cb_tp: TDataSource
    DataSet = zq_cb_tp
    Left = 336
    Top = 376
  end
  object zq_docs: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select *,'
      'case contract_state  '
      'when null then ""'
      'when 1 then "'#1085#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1080'"'
      'when 2 then "'#1072#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085'" end desct_state'
      'from docs order by id_tu')
    Params = <>
    Left = 280
    Top = 480
  end
  object DS_docs: TDataSource
    DataSet = zq_docs
    Left = 328
    Top = 480
  end
  object zq_gbu: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      'schems_gbu.id_gbu,'
      'schems_gbu.id_oot_a,'
      'schems_gbu.gbu_name,'
      'schems_gbu.address_point,'
      'schems_gbu.len,'
      'schems_gbu.squ,'
      'schems_gbu.gbu_state,'
      'case gbu_state'
      'when NULL then NULL'
      'when 1 then "'#1074' '#1085#1086#1074#1091#1102'"'
      'when 2 then schems_gbu.date_req END AS date_req,'
      'oot.nn_oot,'
      'oot.name_oot,'
      'oot.direction'
      'FROM schems_gbu'
      'LEFT JOIN oot ON oot.id_oot=schems_gbu.id_oot_a'
      ''
      'where (:p_schema=schems_gbu.id_schema_a)'
      'ORDER BY gbu_name')
    Params = <
      item
        DataType = ftString
        Name = 'p_schema'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 440
    Top = 488
    ParamData = <
      item
        DataType = ftString
        Name = 'p_schema'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object DS_gbu: TDataSource
    DataSet = zq_gbu
    Left = 496
    Top = 488
  end
  object zq_gbu_oot: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT id_oot,'
      'CONCAT_WS(" - ",nn_oot,name_oot,direction) as ls_items'
      'FROM oot'
      'WHERE id_schema_a=:p_schema')
    Params = <
      item
        DataType = ftString
        Name = 'p_schema'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 440
    Top = 552
    ParamData = <
      item
        DataType = ftString
        Name = 'p_schema'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object DS_gbu_oot: TDataSource
    DataSet = zq_gbu_oot
    Left = 512
    Top = 552
  end
  object zq_materials: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT '
      'id_material,'
      'name_material,'
      'short_name,'
      'active,'
      'add_act'
      'FROM ls_materials'
      'where (:p_visible=1 or active=1)')
    Params = <
      item
        DataType = ftString
        Name = 'p_visible'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 280
    Top = 592
    ParamData = <
      item
        DataType = ftString
        Name = 'p_visible'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object DS_materials: TDataSource
    DataSet = zq_materials
    OnDataChange = DS_materialsDataChange
    Left = 328
    Top = 592
  end
  object zq_materials_doc: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select'
      '*'
      'from ls_materials_doc'
      'where (:p_id_material=id_material_a)')
    Params = <
      item
        DataType = ftString
        Name = 'p_id_material'
        ParamType = ptUnknown
        Value = 0
      end>
    Left = 280
    Top = 648
    ParamData = <
      item
        DataType = ftString
        Name = 'p_id_material'
        ParamType = ptUnknown
        Value = 0
      end>
  end
  object DS_materials_doc: TDataSource
    DataSet = zq_materials_doc
    Left = 328
    Top = 648
  end
end
