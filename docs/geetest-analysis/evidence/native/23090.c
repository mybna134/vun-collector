__int64 __fastcall sub_23090(__int64 a1, __int64 a2)
{
  __int64 result; // x0
  int v3; // w13
  int v4; // [xsp+Ch] [xbp-4h]

  result = sub_F180(a1, a2, &qword_F2FD8);
  v4 = result;
  v3 = -175857105;
  while ( 1 )
  {
    while ( v3 <= -1146955173 )
    {
      if ( v3 == -1675671093 )
      {
        v3 = -1146955172;
        result = 1;
      }
      else
      {
        result = 0;
        v3 = -1146955172;
      }
    }
    if ( v3 == -1146955172 )
      break;
    if ( v4 <= 0 )
      v3 = -1601128332;
    else
      v3 = -1675671093;
  }
  return result;
}
