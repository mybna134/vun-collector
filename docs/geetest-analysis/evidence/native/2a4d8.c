__int64 __fastcall sub_2A4D8(__int64 a1, __int64 a2, __int64 a3, _BYTE *a4)
{
  unsigned int v4; // w22
  int v6; // w0
  __int64 v7; // x2
  _BYTE *v8; // x3
  int v9; // w4
  _BYTE *v10; // x5
  __int64 v11; // x6
  _BYTE *v12; // x7
  int v13; // w8
  __int64 v14; // x0
  char *v15; // x1
  int v17; // [xsp+1Ch] [xbp-64h]
  _QWORD v18[2]; // [xsp+20h] [xbp-60h] BYREF

  v18[1] = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v18[0] = 0;
  v6 = sub_8E28((__int64)&xmmword_F59C0, (__int64)v18, 8, a4);
  v13 = 644179408;
  v17 = v6;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( v13 <= -53718242 )
      {
        if ( v13 > -1016328627 )
        {
          if ( v13 > -760871737 )
          {
            if ( v13 == -760871736 )
            {
              if ( (unsigned int)sub_6BA4("", v18, v7, (int)v8, v9, v10, v11, v12) )
                v13 = 871658296;
              else
                v13 = -1090784202;
            }
            else if ( sub_8630((__int64)&xmmword_F5A60) )
            {
              v13 = -1016328626;
            }
            else
            {
              v13 = -1090784202;
            }
          }
          else
          {
            if ( v13 == -1016328626 )
            {
              v14 = a1;
              v15 = &byte_F5A70;
              goto LABEL_2;
            }
            if ( (unsigned int)sub_6BA4(&byte_F2F20, v18, v7, (int)v8, v9, v10, v11, v12) )
              v13 = 1907379223;
            else
              v13 = -1090784202;
          }
        }
        else if ( v13 > -1090784203 )
        {
          if ( v13 != -1090784202 )
          {
            v14 = a1;
            v15 = &byte_F5A5C;
            goto LABEL_2;
          }
          v4 = 0;
          v13 = 1652754053;
        }
        else if ( v13 == -1609748640 )
        {
          if ( (unsigned int)sub_6BA4("", v18, v7, (int)v8, v9, v10, v11, v12) )
            v13 = -1569717327;
          else
            v13 = -1090784202;
        }
        else if ( (unsigned int)sub_6BA4(&byte_F2F20, v18, v7, (int)v8, v9, v10, v11, v12) )
        {
          v13 = 1488459363;
        }
        else
        {
          v13 = -1090784202;
        }
      }
      if ( v13 > 1488459362 )
        break;
      if ( v13 > 644179407 )
      {
        if ( v13 == 644179408 )
        {
          if ( v17 )
            v13 = 490924051;
          else
            v13 = 1624172452;
        }
        else if ( (unsigned int)sub_6BA4(&byte_F2F20, v18, v7, (int)v8, v9, v10, v11, v12) )
        {
          v13 = -1030574920;
        }
        else
        {
          v13 = -1090784202;
        }
      }
      else if ( v13 == -53718241 )
      {
        if ( (unsigned int)sub_8E28((__int64)&xmmword_F5A30, (__int64)v18, 8, v8) )
          v13 = -760871736;
        else
          v13 = -227348584;
      }
      else if ( (unsigned int)sub_6BA4("", v18, v7, (int)v8, v9, v10, v11, v12) )
      {
        v13 = -881403093;
      }
      else
      {
        v13 = -1090784202;
      }
    }
    if ( v13 > 1652754052 )
      break;
    if ( v13 == 1488459363 )
    {
      v14 = a1;
      v15 = &byte_F5A20;
LABEL_2:
      sub_14068(v14, v15, v7, v8);
      v4 = 1;
      v13 = 1652754053;
    }
    else if ( (unsigned int)sub_8E28((__int64)&xmmword_F59F0, (__int64)v18, 8, v8) )
    {
      v13 = -1609748640;
    }
    else
    {
      v13 = -53718241;
    }
  }
  if ( v13 == 1907379223 )
  {
    v14 = a1;
    v15 = &byte_F59E4;
    goto LABEL_2;
  }
  return v4;
}
