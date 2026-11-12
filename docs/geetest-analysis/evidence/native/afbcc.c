__int64 __fastcall sub_AFBCC(const char *a1, _QWORD *a2)
{
  __int64 v2; // x22
  char *v3; // x27
  const void *v4; // x2
  int i; // w8
  char *v6; // x28
  char *v7; // x22
  __int64 v11; // [xsp+20h] [xbp-240h]
  int v12; // [xsp+2Ch] [xbp-234h]
  FILE *stream; // [xsp+40h] [xbp-220h]
  char *s; // [xsp+48h] [xbp-218h]
  char *v15; // [xsp+58h] [xbp-208h]
  int v16; // [xsp+64h] [xbp-1FCh]
  __int64 v17; // [xsp+68h] [xbp-1F8h] BYREF
  __int64 v18; // [xsp+70h] [xbp-1F0h] BYREF
  __int64 v19; // [xsp+78h] [xbp-1E8h] BYREF
  _QWORD v20[16]; // [xsp+80h] [xbp-1E0h] BYREF
  char v21[256]; // [xsp+100h] [xbp-160h] BYREF
  __int64 v22; // [xsp+200h] [xbp-60h]

  v22 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  stream = fopen((const char *)&xmmword_F74F0, &byte_F7230);
LABEL_2:
  for ( i = 1487474077; ; i = -494332195 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( i <= -395233993 )
        {
          if ( i > -957802867 )
          {
            if ( i == -957802866 )
            {
              if ( sub_75D4(s, "z%px\b", v4) )
                i = 1019943485;
              else
                i = -1301998514;
            }
            else if ( i == -704495488 )
            {
              v6 = strtok(s, &byte_F7510);
              v7 = strtok(nullptr, &byte_F7510);
              v17 = 0;
              v18 = 0;
              sscanf(v6, &byte_F7514, &v18);
              sscanf(v7, &byte_F7514, &v17);
              v2 = v17 - v18;
              i = 1761984217;
            }
            else
            {
              v15 = v3;
              v16 = v12;
              if ( v3 )
                i = -2041089601;
              else
                i = -395233992;
            }
          }
          else if ( i == -2041089601 )
          {
            v12 = v16 + 1;
            v20[v16] = v15;
            v3 = strtok(nullptr, &byte_F750C);
            i = -494332195;
          }
          else
          {
            if ( i != -1767019633 )
              goto LABEL_2;
            if ( sscanf(s, &byte_F7508, &v19) == 1 )
              i = -131019751;
            else
              i = 977143529;
          }
        }
        if ( i <= 1019943484 )
          break;
        if ( i == 1019943485 )
        {
          if ( sub_75D4(s, a1) )
            i = -1767019633;
          else
            i = -1301998514;
        }
        else if ( i == 1761984217 )
        {
          v11 = v2;
          i = 21391211;
        }
        else
        {
          s = v21;
          v11 = 0;
          if ( fgets(v21, 256, stream) )
            i = -957802866;
          else
            i = 21391211;
        }
      }
      if ( i > 21391210 )
        break;
      if ( i == -395233992 )
      {
        v2 = 0;
        if ( v20[0] )
          i = -704495488;
        else
          i = 1761984217;
      }
      else
      {
        *a2 = v19;
        i = 977143529;
      }
    }
    if ( i != 977143529 )
      break;
    memset(v20, 0, sizeof(v20));
    v3 = strtok(s, &byte_F750C);
    v12 = 0;
  }
  fclose(stream);
  return v11;
}
