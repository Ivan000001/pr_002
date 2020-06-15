unit exp_xls;

interface
uses DB, windows,sysutils ;

procedure create_xls_rep_001(DS_:TDataSet;path_filename:string);


implementation
uses  XLSFile, XLSFormat, XLSWorkbook;

procedure create_xls_rep_001(DS_:TDataSet;path_filename:string);
var
  xf: TXLSFile;
  i,m:integer; m_street:string;
  R: TRange;
begin
 { Create TXLSFile object }
  xf:= TXLSFile.Create;
  try
    { Sheet's index is 0-based }
    with xf.Workbook.Sheets[0] do
    begin
      //формат шапка
        r:=ranges.Add();
  r.AddRect(0,2,0,0);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,1,1);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,2,2);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,3,3);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,4,4);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,5,5);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,6,6);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,7,7);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,0,8,11);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(1,2,8,8);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(1,1,9,10);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(1,2,11,11);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,12,12);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,13,13);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,14,14);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,15,15);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,16,16);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,17,17);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,18,18);r.MergeCells();r.Wrap:=true;r.Clear();
  r.AddRect(0,2,19,19);r.MergeCells();r.Wrap:=true;r.Clear();

      Columns[0].WidthPx:= 180; cells[0,0].Value:='Наименование улицы';
      Columns[1].WidthPx:= 50; cells[0,1].Value:='усл.обозн.';
      Columns[2].WidthPx:= 220; cells[0,2].Value:='Наименование ООТ';
      Columns[3].WidthPx:= 50; cells[0,3].Value:='Наименование объекта';
      Columns[4].WidthPx:= 50; cells[0,4].Value:='Кол-во, шт';
      Columns[5].WidthPx:= 120; cells[0,5].Value:='Номер ТУ';
      Columns[6].WidthPx:= 50; cells[0,6].Value:='Согласована схема с РЭС';
      Columns[7].WidthPx:= 100; cells[0,7].Value:='Точка подключения по схеме';
      Columns[8].WidthPx:= 50; cells[0,8].Value:='Сделано выбросов ПНД труб, шт';
          cells[1,8].Value:='план, шт';
          Columns[9].WidthPx:= 50;cells[1,9].Value:='факт, шт';
          cells[2,9].Value:='в газон';
          Columns[10].WidthPx:= 50;cells[2,10].Value:='к опоре НО';
          Columns[11].WidthPx:= 50; cells[1,11].Value:='Процент выполнения, %';
      Columns[12].WidthPx:= 50; cells[0,12].Value:='Разработано траншеи, п.м';
      Columns[13].WidthPx:= 50; cells[0,13].Value:='Заложено ПНД трубы, м';
      Columns[14].WidthPx:= 50; cells[0,14].Value:='Проложено КЛ, м';
      Columns[15].WidthPx:= 50; cells[0,15].Value:='Смонтировано ВЛ, м';
      Columns[16].WidthPx:= 50; cells[0,16].Value:='Смонтировано ВРЩ в точке подключения, шт';
      Columns[17].WidthPx:= 50; cells[0,17].Value:='Подключено, шт';
      Columns[18].WidthPx:= 80; cells[0,18].Value:='Исполнитель';
      Columns[19].WidthPx:= 50; cells[0,19].Value:='Подписаны КС-2,КС-3';

  r:=ranges.add;
  r.addrect(0,2,0,19);
  r.FillPattern:= xlPatternSolid;
  r.FillPatternBGColorIndex:= 24;
  r.BorderColorRGB[xlBorderAll]:= RGB(0, 0, 0);
  r.BorderStyle[xlBorderAll]:= bsThin;
  r.Wrap:=true;
  r.FontHeight:=8;
  r.HAlign:=xlHAlignCenter;
  r.VAlign:=xlVAlignCenter;
  r.DeleteRect(0);

  rows[0].Height:=30;
  rows[1].Height:=30;
  rows[2].Height:=30;

    i:=3; m:=i;
      ds_.First();
      if ds_.FieldByName('id_district').AsInteger=1 then name:='САО' else name:='ВАО';
      m_street:=ds_.FieldByName('name_gr_streets').AsString;

//      name:=ds_.FieldByName('').AsString;
      while not ds_.Eof do
        begin
          if ds_.FieldByName('name_gr_streets').AsString<>m_street then
            begin
              r:=ranges.Add;
              r.AddRect(m,i-1,0,0);r.MergeCells();r.Wrap:=true;r.Clear;
                 r.VAlign:=xlVAlignCenter;
              r.Value:=m_street;
//              r.DeleteRect(0);
              m_street:=ds_.FieldByName('name_gr_streets').AsString;
              r:=ranges.Add;
              r.AddRect(i-1,i-1,1,19);
              r.FillPattern:= xlPatternSolid;
              r.FillPatternBGColorIndex:=34;
              r.FontBold:=true;
              m:=i;
            end else cells[i,0].Value:=ds_.FieldByName('name_gr_streets').AsString;
          cells[i,1].Value:=ds_.FieldByName('nn_oot').AsString;
          cells[i,2].Value:=ds_.FieldByName('name_oot').AsString;
          cells[i,3].Value:=ds_.FieldByName('direction').AsString;
          cells[i,4].Value:=ds_.FieldByName('c_').AsInteger;
          cells[i,5].Value:=ds_.FieldByName('id_tu').AsString;
          cells[i,6].Value:=ds_.FieldByName('agreed_res').AsString;
          cells[i,7].Value:=ds_.FieldByName('tp_name').AsString;
          cells[i,8].Value:=ds_.FieldByName('p_output').AsInteger;
          cells[i,9].Value:=ds_.FieldByName('g_output').AsInteger;
          cells[i,10].Value:=ds_.FieldByName('oot_output').AsInteger;
          cells[i,11].Value:=ds_.FieldByName('per_output').AsString;
          cells[i,12].Value:=ds_.FieldByName('trench').AsFloat;
          cells[i,13].Value:=ds_.FieldByName('laythepipe').AsFloat;
          cells[i,14].Value:=ds_.FieldByName('lay_cl').AsFloat;
          cells[i,15].Value:=ds_.FieldByName('montage_al').AsFloat;
          cells[i,16].Value:=ds_.FieldByName('count_vrsh').AsInteger;
          cells[i,17].Value:=ds_.FieldByName('job_finished').AsInteger;
          cells[i,18].Value:=ds_.FieldByName('name_exe_short').AsString;
          cells[i,19].Value:=ds_.FieldByName('ks_state').AsString;
          ds_.Next;
          i:=i+1;
        end;

//   r.DeleteRect(0);
       r:=ranges.Add;
       r.AddRect(1,i-1,0,19);
       r.BorderColorRGB[xlBorderAll]:= RGB(0, 0, 0);
       r.BorderStyle[xlBorderAll]:= bsThin;
       r.HAlign:=xlHAlignCenter;
       r.Wrap:=true;
       r.FontHeight:=8;

       r:=ranges.Add;
       r.AddRect(3,i-1,0,0);
       r.HAlign:= xlHAlignLeft;
       r.DeleteRect(0);

       r:=ranges.Add;
       r.AddRect(3,i-1,2,2);
       r.HAlign:= xlHAlignLeft;
//       windowoptions.ZoomPercent:=70;

    end;
    xf.SaveAs(path_filename);
  finally
    xf.Destroy;
  end;
end;

end.
