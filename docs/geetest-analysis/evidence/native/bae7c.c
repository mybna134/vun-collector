__int64 __fastcall sub_BAE7C(__int64 a1, __int64 a2, __int64 a3)
{
  __int64 result; // x0
  int v6; // w8
  __int64 v7; // [xsp+8h] [xbp-38h]
  int v8; // [xsp+1Ch] [xbp-24h]

  v7 = sub_BAF6C(a3);
  result = sub_B9650(a1, a2, v7, 0);
  v6 = 950753980;
  v8 = result;
  while ( 1 )
  {
    while ( v6 > 950753979 )
    {
      if ( v6 == 1445439037 )
      {
        sub_B2BD4(v7);
        result = 0;
        v6 = 544577794;
      }
      else if ( v8 )
      {
        v6 = -2063945774;
      }
      else
      {
        v6 = 1445439037;
      }
    }
    if ( v6 != -2063945774 )
      break;
    result = v7;
    v6 = 544577794;
  }
  return result;
}
