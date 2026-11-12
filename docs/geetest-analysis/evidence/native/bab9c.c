__int64 __fastcall sub_BAB9C(__int64 a1, __int64 a2)
{
  __int64 result; // x0
  int v5; // w8
  __int64 v6; // [xsp+8h] [xbp-38h]
  int v7; // [xsp+1Ch] [xbp-24h]

  v6 = sub_BAC8C();
  result = sub_B9650(a1, a2, v6, 0);
  v5 = -1578284089;
  v7 = result;
  while ( 1 )
  {
    while ( v5 > -61353695 )
    {
      if ( v5 == -61353694 )
      {
        result = v6;
      }
      else
      {
        sub_B2BD4(v6);
        result = 0;
      }
      v5 = -738578262;
    }
    if ( v5 != -1578284089 )
      break;
    if ( v7 )
      v5 = -61353694;
    else
      v5 = 1728618188;
  }
  return result;
}
