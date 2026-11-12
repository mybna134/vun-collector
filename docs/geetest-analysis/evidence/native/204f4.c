__int64 __fastcall sub_204F4(__int64 a1, __int64 a2)
{
  int v2; // w22
  __int64 v4; // x0
  unsigned __int8 *v5; // x2
  __int64 v6; // x3
  int v7; // w4
  int v8; // w8
  unsigned int v10; // [xsp+10h] [xbp-2B0h]
  int v11; // [xsp+14h] [xbp-2ACh]
  __int64 v12; // [xsp+18h] [xbp-2A8h]
  __int64 v13; // [xsp+20h] [xbp-2A0h]
  FILE *stream; // [xsp+30h] [xbp-290h]
  char *s; // [xsp+38h] [xbp-288h]
  int v16; // [xsp+44h] [xbp-27Ch]
  _QWORD v17[2]; // [xsp+48h] [xbp-278h] BYREF
  __int16 v18; // [xsp+58h] [xbp-268h]
  char v19[512]; // [xsp+60h] [xbp-260h] BYREF
  __int64 v20; // [xsp+260h] [xbp-60h]

  v20 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v12 = sub_14D1C(a1, a2);
  v4 = sub_150EC(a1, v12, (__int64)&byte_F2E54);
  v8 = -373034710;
  v13 = v4;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( v8 <= -619479308 )
        {
          if ( v8 <= -994053210 )
          {
            if ( v8 == -1799909436 )
            {
              v16 = v2;
              s = v19;
              if ( fgets(v19, 512, stream) )
                v8 = -769388143;
              else
                v8 = 1550463577;
            }
            else if ( v8 == -1627807992 )
            {
              v10 = 0;
              v8 = 499422654;
            }
            else if ( (*(unsigned int (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 1344LL))(a1, v13) )
            {
              v8 = -1627807992;
            }
            else
            {
              v8 = -564046370;
            }
          }
          else if ( v8 > -769388144 )
          {
            if ( v8 == -769388143 )
            {
              if ( sub_75D4((unsigned __int8 *)s, (unsigned __int8 *)&byte_F2E6C, v5, v6, v7) )
                v8 = -950134447;
              else
                v8 = -619479307;
            }
            else
            {
              v10 = 1;
              if ( v11 )
                v8 = 499422654;
              else
                v8 = -1627807992;
            }
          }
          else if ( v8 == -994053209 )
          {
            v11 = 0;
            v8 = -632748822;
          }
          else
          {
            v2 = 1;
            v8 = -1799909436;
          }
        }
        if ( v8 <= 906080762 )
          break;
        if ( v8 > 1550463576 )
        {
          if ( v8 == 1550463577 )
          {
            sub_E99D4(stream);
            v8 = -994053209;
          }
          else if ( sub_75D4((unsigned __int8 *)s, (unsigned __int8 *)aJohmCrnct, v5, v6, v7) )
          {
            v8 = 906080763;
          }
          else
          {
            v8 = 999086217;
          }
        }
        else if ( v8 == 906080763 )
        {
          v17[0] = 0;
          v17[1] = 0;
          v18 = 0;
          sscanf(s, (const char *)&xmmword_F2E90, v17);
          HIBYTE(v18) = 0;
          sub_154B8(a1, v12, (__int64)&byte_F2E54, (__int64)v17);
          sub_E99D4(stream);
          v11 = 1;
          v8 = -632748822;
        }
        else
        {
          v2 = v16;
          v8 = -1799909436;
        }
      }
      if ( v8 > -373034711 )
        break;
      if ( v8 == -619479307 )
      {
        if ( v16 )
          v8 = 2085091282;
        else
          v8 = 999086217;
      }
      else
      {
        memset(v19, 0, sizeof(v19));
        stream = (FILE *)sub_E8FC4(&qword_F2E60, &byte_F2E68, v5);
        v2 = 0;
        if ( stream )
          v8 = -1799909436;
        else
          v8 = -994053209;
      }
    }
    if ( v8 != -373034710 )
      break;
    if ( v13 )
      v8 = -1119616575;
    else
      v8 = -564046370;
  }
  return v10;
}
