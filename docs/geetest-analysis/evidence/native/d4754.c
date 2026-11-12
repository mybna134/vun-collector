__int64 __fastcall sub_D4754(__int64 a1, __int64 a2)
{
  __int64 v2; // x23
  int v5; // w0
  int v6; // w8
  __int64 v8; // [xsp+0h] [xbp-70h]
  __int64 v9; // [xsp+8h] [xbp-68h]
  int v10; // [xsp+14h] [xbp-5Ch]
  __int64 v11; // [xsp+18h] [xbp-58h]

  v8 = sub_14D1C(a1);
  v9 = sub_150EC(a1, v8, &byte_F7D60);
  v5 = sub_167AC(a1, v9);
  v6 = 8333693;
  v10 = v5;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( v6 > -941794887 )
      {
        if ( v6 == -941794886 )
        {
          sub_15E4C(a1, v8, &byte_F7D60, v11);
          v2 = v11;
          v6 = -1680052173;
        }
        else if ( v6 == 2035939445 )
        {
          v2 = v11;
          if ( (*(unsigned int (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 1344LL))(a1, v11) == 15 )
            v6 = -941794886;
          else
            v6 = -1680052173;
        }
        else
        {
          v2 = v9;
          if ( v10 )
            v6 = -1301850183;
          else
            v6 = -1680052173;
        }
      }
      if ( v6 != -2098138601 )
        break;
      v11 = sub_169A0(a1, a2);
      v2 = v11;
      if ( (unsigned int)sub_167AC(a1, v11) )
        v6 = -1680052173;
      else
        v6 = 2035939445;
    }
    if ( v6 == -1680052173 )
      break;
    v2 = v9;
    if ( (unsigned int)sub_20930(a1, a2, &xmmword_F7D10) )
      v6 = -2098138601;
    else
      v6 = -1680052173;
  }
  (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v8);
  return v2;
}
