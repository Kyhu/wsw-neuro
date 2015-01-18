/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/kyhu/Workspace/WSW/wsw-neuro/ISE/NN/tb_main.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {3565U, 0U};
static unsigned int ng4[] = {2425U, 0U};
static unsigned int ng5[] = {1590U, 0U};
static unsigned int ng6[] = {1445U, 0U};
static unsigned int ng7[] = {2698U, 0U};
static unsigned int ng8[] = {401U, 0U};
static unsigned int ng9[] = {883U, 0U};
static int ng10[] = {200, 0};
static unsigned int ng11[] = {240U, 0U};
static unsigned int ng12[] = {3003U, 0U};
static unsigned int ng13[] = {867U, 0U};
static unsigned int ng14[] = {1461U, 0U};
static unsigned int ng15[] = {851U, 0U};
static unsigned int ng16[] = {2152U, 0U};
static unsigned int ng17[] = {1477U, 0U};
static unsigned int ng18[] = {803U, 0U};
static unsigned int ng19[] = {1060U, 0U};
static unsigned int ng20[] = {1011U, 0U};
static unsigned int ng21[] = {2072U, 0U};
static unsigned int ng22[] = {1927U, 0U};
static unsigned int ng23[] = {2714U, 0U};
static unsigned int ng24[] = {385U, 0U};
static unsigned int ng25[] = {2377U, 0U};
static unsigned int ng26[] = {899U, 0U};
static unsigned int ng27[] = {1574U, 0U};
static unsigned int ng28[] = {2505U, 0U};
static unsigned int ng29[] = {449U, 0U};
static unsigned int ng30[] = {995U, 0U};



static void Initial_57_0(char *t0)
{
    char t4[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 3800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);

LAB4:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t6) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB16;

LAB14:    if (*((unsigned int *)t6) == 0)
        goto LAB13;

LAB15:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB16:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB18;

LAB17:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    *((unsigned int *)t4) = 1;
    goto LAB16;

LAB18:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB17;

LAB19:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB23;

LAB21:    if (*((unsigned int *)t6) == 0)
        goto LAB20;

LAB22:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB23:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB25;

LAB24:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB20:    *((unsigned int *)t4) = 1;
    goto LAB23;

LAB25:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB24;

LAB26:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB30;

LAB28:    if (*((unsigned int *)t6) == 0)
        goto LAB27;

LAB29:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB30:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB32;

LAB31:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB27:    *((unsigned int *)t4) = 1;
    goto LAB30;

LAB32:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB31;

LAB33:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(89, ng0);

LAB34:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng10)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t12 = (t4 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(105, ng0);

LAB52:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng10)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t12 = (t4 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(121, ng0);

LAB70:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng10)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t12 = (t4 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng30)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 17);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(137, ng0);

LAB88:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng10)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t12 = (t4 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB89;

LAB90:    goto LAB1;

LAB35:    xsi_set_current_line(90, ng0);

LAB37:    xsi_set_current_line(91, ng0);
    t13 = (t0 + 1448);
    t14 = (t13 + 56U);
    t23 = *((char **)t14);
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t15 = *((unsigned int *)t25);
    t16 = (~(t15));
    t17 = *((unsigned int *)t23);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB41;

LAB39:    if (*((unsigned int *)t25) == 0)
        goto LAB38;

LAB40:    t26 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t26) = 1;

LAB41:    t27 = (t24 + 4);
    t28 = (t23 + 4);
    t20 = *((unsigned int *)t23);
    t21 = (~(t20));
    *((unsigned int *)t24) = t21;
    *((unsigned int *)t27) = 0;
    if (*((unsigned int *)t28) != 0)
        goto LAB43;

LAB42:    t32 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t32 & 1U);
    t33 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t24, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB38:    *((unsigned int *)t24) = 1;
    goto LAB41;

LAB43:    t22 = *((unsigned int *)t24);
    t29 = *((unsigned int *)t28);
    *((unsigned int *)t24) = (t22 | t29);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t28);
    *((unsigned int *)t27) = (t30 | t31);
    goto LAB42;

LAB44:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB48;

LAB46:    if (*((unsigned int *)t6) == 0)
        goto LAB45;

LAB47:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB48:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB50;

LAB49:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB45:    *((unsigned int *)t4) = 1;
    goto LAB48;

LAB50:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB49;

LAB51:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 2888);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    goto LAB34;

LAB53:    xsi_set_current_line(106, ng0);

LAB55:    xsi_set_current_line(107, ng0);
    t13 = (t0 + 1448);
    t14 = (t13 + 56U);
    t23 = *((char **)t14);
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t15 = *((unsigned int *)t25);
    t16 = (~(t15));
    t17 = *((unsigned int *)t23);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB59;

LAB57:    if (*((unsigned int *)t25) == 0)
        goto LAB56;

LAB58:    t26 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t26) = 1;

LAB59:    t27 = (t24 + 4);
    t28 = (t23 + 4);
    t20 = *((unsigned int *)t23);
    t21 = (~(t20));
    *((unsigned int *)t24) = t21;
    *((unsigned int *)t27) = 0;
    if (*((unsigned int *)t28) != 0)
        goto LAB61;

LAB60:    t32 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t32 & 1U);
    t33 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t24, 0, 0, 1);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB62;
    goto LAB1;

LAB56:    *((unsigned int *)t24) = 1;
    goto LAB59;

LAB61:    t22 = *((unsigned int *)t24);
    t29 = *((unsigned int *)t28);
    *((unsigned int *)t24) = (t22 | t29);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t28);
    *((unsigned int *)t27) = (t30 | t31);
    goto LAB60;

LAB62:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB66;

LAB64:    if (*((unsigned int *)t6) == 0)
        goto LAB63;

LAB65:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB66:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB68;

LAB67:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB69;
    goto LAB1;

LAB63:    *((unsigned int *)t4) = 1;
    goto LAB66;

LAB68:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB67;

LAB69:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 2888);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    goto LAB52;

LAB71:    xsi_set_current_line(122, ng0);

LAB73:    xsi_set_current_line(123, ng0);
    t13 = (t0 + 1448);
    t14 = (t13 + 56U);
    t23 = *((char **)t14);
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t15 = *((unsigned int *)t25);
    t16 = (~(t15));
    t17 = *((unsigned int *)t23);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB77;

LAB75:    if (*((unsigned int *)t25) == 0)
        goto LAB74;

LAB76:    t26 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t26) = 1;

LAB77:    t27 = (t24 + 4);
    t28 = (t23 + 4);
    t20 = *((unsigned int *)t23);
    t21 = (~(t20));
    *((unsigned int *)t24) = t21;
    *((unsigned int *)t27) = 0;
    if (*((unsigned int *)t28) != 0)
        goto LAB79;

LAB78:    t32 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t32 & 1U);
    t33 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t24, 0, 0, 1);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB80;
    goto LAB1;

LAB74:    *((unsigned int *)t24) = 1;
    goto LAB77;

LAB79:    t22 = *((unsigned int *)t24);
    t29 = *((unsigned int *)t28);
    *((unsigned int *)t24) = (t22 | t29);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t28);
    *((unsigned int *)t27) = (t30 | t31);
    goto LAB78;

LAB80:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB84;

LAB82:    if (*((unsigned int *)t6) == 0)
        goto LAB81;

LAB83:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB84:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB86;

LAB85:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB81:    *((unsigned int *)t4) = 1;
    goto LAB84;

LAB86:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB85;

LAB87:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 2888);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    goto LAB70;

LAB89:    xsi_set_current_line(138, ng0);

LAB91:    xsi_set_current_line(139, ng0);
    t13 = (t0 + 1448);
    t14 = (t13 + 56U);
    t23 = *((char **)t14);
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t15 = *((unsigned int *)t25);
    t16 = (~(t15));
    t17 = *((unsigned int *)t23);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB95;

LAB93:    if (*((unsigned int *)t25) == 0)
        goto LAB92;

LAB94:    t26 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t26) = 1;

LAB95:    t27 = (t24 + 4);
    t28 = (t23 + 4);
    t20 = *((unsigned int *)t23);
    t21 = (~(t20));
    *((unsigned int *)t24) = t21;
    *((unsigned int *)t27) = 0;
    if (*((unsigned int *)t28) != 0)
        goto LAB97;

LAB96:    t32 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t32 & 1U);
    t33 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t33 & 1U);
    t34 = (t0 + 1448);
    xsi_vlogvar_assign_value(t34, t24, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB98;
    goto LAB1;

LAB92:    *((unsigned int *)t24) = 1;
    goto LAB95;

LAB97:    t22 = *((unsigned int *)t24);
    t29 = *((unsigned int *)t28);
    *((unsigned int *)t24) = (t22 | t29);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t28);
    *((unsigned int *)t27) = (t30 | t31);
    goto LAB96;

LAB98:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB102;

LAB100:    if (*((unsigned int *)t6) == 0)
        goto LAB99;

LAB101:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB102:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB104;

LAB103:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB105;
    goto LAB1;

LAB99:    *((unsigned int *)t4) = 1;
    goto LAB102;

LAB104:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB103;

LAB105:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 2888);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    goto LAB88;

}


extern void work_m_07469956286856937660_3163762309_init()
{
	static char *pe[] = {(void *)Initial_57_0};
	xsi_register_didat("work_m_07469956286856937660_3163762309", "isim/tb_main_isim_beh.exe.sim/work/m_07469956286856937660_3163762309.didat");
	xsi_register_executes(pe);
}
