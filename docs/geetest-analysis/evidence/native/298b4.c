void *__fastcall sub_298B4(__int64 a1)
{
  void *result; // x0
  int v2; // w8
  unsigned __int64 v3; // x27
  int v4; // w25
  int v5; // w10
  int v6; // w9
  _QWORD *v8; // [xsp+20h] [xbp-320h]
  unsigned __int64 v9; // [xsp+28h] [xbp-318h]
  int v10; // [xsp+30h] [xbp-310h]
  int v11; // [xsp+34h] [xbp-30Ch]
  _QWORD v12[87]; // [xsp+38h] [xbp-308h] BYREF

  v12[85] = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  result = memcpy(v12, off_F1068, 0x2A8u);
  v3 = 0;
  v4 = 0;
LABEL_3:
  v5 = -1703775278;
  do
  {
    while ( 1 )
    {
      while ( 1 )
      {
        v6 = v5;
        if ( v5 > -1145805176 )
          break;
        if ( v5 > -1669849350 )
        {
          if ( v5 == -1669849349 )
          {
            v4 = v11;
            v3 = v9 + 1;
            goto LABEL_3;
          }
          result = (void *)sub_14068(a1, *v8);
          v5 = -1145805175;
          v2 = v10 + 1;
        }
        else if ( v5 == -1893772906 )
        {
          v8 = &v12[v9];
          result = (void *)sub_AFA78(*v8);
          v2 = v10;
          if ( (_DWORD)result )
            v5 = -1272577685;
          else
            v5 = -1145805175;
        }
        else
        {
          v9 = v3;
          v10 = v4;
          if ( v3 >= 0x55 )
            v5 = -23841829;
          else
            v5 = -1893772906;
        }
      }
      if ( v5 > 72542300 )
        break;
      if ( v5 == -1145805175 )
      {
        v11 = v2;
        if ( v2 <= 2 )
          v5 = -1669849349;
        else
          v5 = 626185006;
      }
      else
      {
        v5 = 72542301;
      }
    }
    v5 = 72542301;
  }
  while ( v6 == 626185006 );
  return result;
}
