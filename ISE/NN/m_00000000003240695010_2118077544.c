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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/gosia/Desktop/wsw studia miczal/wsw/neuron1.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {17, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1024U, 0U, 0U, 0U};
static int ng5[] = {32, 0};
static int ng6[] = {10, 0};
static unsigned int ng7[] = {0U, 0U};



static void Cont_31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 5568);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 5440);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_37_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5632);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void Always_62_2(char *t0)
{
    char t6[8];
    char t11[8];
    char t34[16];
    char t35[8];
    char t46[8];
    char t48[8];
    char t50[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t47;
    char *t49;
    char *t51;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5456);
    *((int *)t2) = 1;
    t3 = (t0 + 4656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);

LAB5:    xsi_set_current_line(64, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = (t0 + 2288U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB9;

LAB6:    if (t23 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t11) = 1;

LAB9:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2328U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t3 = (t6 + 4);
    t5 = (t4 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 8);
    *((unsigned int *)t6) = t15;
    t16 = *((unsigned int *)t5);
    t17 = (t16 >> 8);
    *((unsigned int *)t3) = t17;
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 511U);
    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 511U);
    t7 = ((char*)((ng5)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_multiply(t11, 32, t6, 32, t7, 32);
    t8 = ((char*)((ng6)));
    memset(t35, 0, 8);
    xsi_vlog_unsigned_divide(t35, 32, t11, 32, t8, 32);
    t9 = ((char*)((ng7)));
    xsi_vlogtype_concat(t34, 33, 33, 2U, t9, 1, t35, 32);
    xsi_vlog_unsigned_add(t50, 33, t2, 33, t34, 33);
    t10 = (t0 + 3208);
    xsi_vlogvar_assign_value(t10, t50, 0, 0, 11);

LAB12:    goto LAB2;

LAB8:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(65, ng0);
    t33 = ((char*)((ng4)));
    t36 = (t0 + 2328U);
    t37 = *((char **)t36);
    memset(t35, 0, 8);
    t36 = (t35 + 4);
    t38 = (t37 + 4);
    t39 = *((unsigned int *)t37);
    t40 = (t39 >> 8);
    *((unsigned int *)t35) = t40;
    t41 = *((unsigned int *)t38);
    t42 = (t41 >> 8);
    *((unsigned int *)t36) = t42;
    t43 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t43 & 511U);
    t44 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t44 & 511U);
    t45 = ((char*)((ng5)));
    memset(t46, 0, 8);
    xsi_vlog_unsigned_multiply(t46, 32, t35, 32, t45, 32);
    t47 = ((char*)((ng6)));
    memset(t48, 0, 8);
    xsi_vlog_unsigned_divide(t48, 32, t46, 32, t47, 32);
    t49 = ((char*)((ng7)));
    xsi_vlogtype_concat(t34, 33, 33, 2U, t49, 1, t48, 32);
    xsi_vlog_unsigned_minus(t50, 33, t33, 33, t34, 33);
    t51 = (t0 + 3208);
    xsi_vlogvar_assign_value(t51, t50, 0, 0, 11);
    goto LAB12;

}

static void Cont_70_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 2047U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 10);
    t18 = (t0 + 5472);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_82_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 5120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 5760);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 131071U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 16);
    t16 = (t0 + 5488);
    *((int *)t16) = 1;

LAB1:    return;
}


extern void work_m_00000000003240695010_2118077544_init()
{
	static char *pe[] = {(void *)Cont_31_0,(void *)Cont_37_1,(void *)Always_62_2,(void *)Cont_70_3,(void *)Cont_82_4};
	xsi_register_didat("work_m_00000000003240695010_2118077544", "isim/tb_main_isim_beh.exe.sim/work/m_00000000003240695010_2118077544.didat");
	xsi_register_executes(pe);
}
