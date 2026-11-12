__int64 __fastcall sub_297A4(__int64 a1)
{
  __int64 result; // x0
  int v3; // w8
  int v4; // [xsp+Ch] [xbp-44h]

  result = sub_28F5C();
  v3 = 848882370;
  v4 = result;
  while ( 1 )
  {
    while ( v3 <= 649726739 )
    {
      if ( v3 == -1993597185 )
      {
        result = sub_29550();
        if ( (_DWORD)result )
          v3 = 2132230354;
        else
          v3 = 649726740;
      }
      else
      {
        result = sub_14068(a1, aAk);
        v3 = -1993597185;
      }
    }
    if ( v3 == 649726740 )
      break;
    if ( v3 == 2132230354 )
    {
      result = sub_14068(a1, &byte_F3E24);
      v3 = 649726740;
    }
    else if ( v4 )
    {
      v3 = 606696163;
    }
    else
    {
      v3 = -1993597185;
    }
  }
  return result;
}
