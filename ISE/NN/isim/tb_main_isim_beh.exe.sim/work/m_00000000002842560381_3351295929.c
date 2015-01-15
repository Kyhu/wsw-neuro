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
static const char *ng0 = "D:/WSW14/wsw-neuro/ISE/NN/neuron_13in.v";
static int ng1[] = {17, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {1024U, 0U};
static int ng4[] = {32, 0};
static int ng5[] = {10, 0};



static void Cont_46_0(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 5888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 16, 0);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 16, 0);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 10776);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10424);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_47_1(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 6136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 33, 17);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 33, 17);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 10840);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10440);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_48_2(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 6384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 50, 34);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 50, 34);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 10904);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10456);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_49_3(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 6632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 67, 51);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 67, 51);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 10968);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10472);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_50_4(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 6880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 84, 68);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 84, 68);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11032);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10488);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_51_5(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 7128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 101, 85);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 101, 85);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11096);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10504);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_52_6(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 7376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 118, 102);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 118, 102);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11160);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10520);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_53_7(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 7624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 135, 119);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 135, 119);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11224);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10536);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_54_8(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 7872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 152, 136);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 152, 136);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11288);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10552);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_55_9(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 8120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 169, 153);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 169, 153);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11352);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10568);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_56_10(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 8368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 186, 170);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 186, 170);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11416);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10584);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_57_11(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 8616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 203, 187);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 203, 187);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11480);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10600);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_58_12(char *t0)
{
    char t3[16];
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 8864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 34, t4, 220, 204);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    xsi_vlog_get_part_select_value(t5, 34, t6, 220, 204);
    xsi_vlog_unsigned_multiply(t7, 34, t3, 34, t5, 34);
    t2 = (t0 + 11544);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t7, 0, 34);
    xsi_driver_vfirst_trans(t2, 0, 33);
    t12 = (t0 + 10616);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_61_13(char *t0)
{
    char t5[16];
    char t7[16];
    char t9[16];
    char t11[16];
    char t13[16];
    char t15[16];
    char t17[16];
    char t19[16];
    char t21[16];
    char t23[16];
    char t25[16];
    char t27[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t10;
    char *t12;
    char *t14;
    char *t16;
    char *t18;
    char *t20;
    char *t22;
    char *t24;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 9112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_add(t5, 38, t3, 34, t4, 34);
    t2 = (t0 + 2328U);
    t6 = *((char **)t2);
    xsi_vlog_unsigned_add(t7, 38, t5, 38, t6, 34);
    t2 = (t0 + 2488U);
    t8 = *((char **)t2);
    xsi_vlog_unsigned_add(t9, 38, t7, 38, t8, 34);
    t2 = (t0 + 2648U);
    t10 = *((char **)t2);
    xsi_vlog_unsigned_add(t11, 38, t9, 38, t10, 34);
    t2 = (t0 + 2808U);
    t12 = *((char **)t2);
    xsi_vlog_unsigned_add(t13, 38, t11, 38, t12, 34);
    t2 = (t0 + 2968U);
    t14 = *((char **)t2);
    xsi_vlog_unsigned_add(t15, 38, t13, 38, t14, 34);
    t2 = (t0 + 3128U);
    t16 = *((char **)t2);
    xsi_vlog_unsigned_add(t17, 38, t15, 38, t16, 34);
    t2 = (t0 + 3288U);
    t18 = *((char **)t2);
    xsi_vlog_unsigned_add(t19, 38, t17, 38, t18, 34);
    t2 = (t0 + 3448U);
    t20 = *((char **)t2);
    xsi_vlog_unsigned_add(t21, 38, t19, 38, t20, 34);
    t2 = (t0 + 3608U);
    t22 = *((char **)t2);
    xsi_vlog_unsigned_add(t23, 38, t21, 38, t22, 34);
    t2 = (t0 + 3768U);
    t24 = *((char **)t2);
    xsi_vlog_unsigned_add(t25, 38, t23, 38, t24, 34);
    t2 = (t0 + 3928U);
    t26 = *((char **)t2);
    xsi_vlog_unsigned_add(t27, 38, t25, 38, t26, 34);
    t2 = (t0 + 11608);
    t28 = (t2 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    xsi_vlog_bit_copy(t31, 0, t27, 0, 38);
    xsi_driver_vfirst_trans(t2, 0, 37);
    t32 = (t0 + 10632);
    *((int *)t32) = 1;

LAB1:    return;
}

static void Cont_62_14(char *t0)
{
    char t3[8];
    char t22[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 9360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4088U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 21);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 21);
    *((unsigned int *)t2) = t9;
    t10 = (t4 + 8);
    t11 = (t4 + 12);
    t12 = *((unsigned int *)t10);
    t13 = (t12 << 11);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 | t13);
    t15 = *((unsigned int *)t11);
    t16 = (t15 << 11);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 | t16);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 131071U);
    t19 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t19 & 131071U);
    t20 = (t0 + 1848U);
    t21 = *((char **)t20);
    memset(t22, 0, 8);
    xsi_vlog_unsigned_add(t22, 18, t3, 18, t21, 17);
    t20 = (t0 + 11672);
    t23 = (t20 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 262143U;
    t28 = t27;
    t29 = (t22 + 4);
    t30 = *((unsigned int *)t22);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t20, 0, 17);
    t35 = (t0 + 10648);
    *((int *)t35) = 1;

LAB1:    return;
}

static void Always_67_15(char *t0)
{
    char t6[8];
    char t11[8];
    char t34[8];
    char t45[8];
    char t47[8];
    char t48[8];
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
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t46;
    char *t49;

LAB0:    t1 = (t0 + 9608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 10664);
    *((int *)t2) = 1;
    t3 = (t0 + 9640);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(68, ng0);

LAB5:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 4248U);
    t5 = *((char **)t4);
    t4 = (t0 + 4208U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng2)));
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

LAB11:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4248U);
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
    t7 = ((char*)((ng4)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_multiply(t11, 32, t6, 32, t7, 32);
    t8 = ((char*)((ng5)));
    memset(t34, 0, 8);
    xsi_vlog_unsigned_divide(t34, 32, t11, 32, t8, 32);
    memset(t45, 0, 8);
    xsi_vlog_unsigned_add(t45, 32, t2, 32, t34, 32);
    t9 = (t0 + 4968);
    xsi_vlogvar_assign_value(t9, t45, 0, 0, 11);

LAB12:    goto LAB2;

LAB8:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(70, ng0);
    t33 = ((char*)((ng3)));
    t35 = (t0 + 4248U);
    t36 = *((char **)t35);
    memset(t34, 0, 8);
    t35 = (t34 + 4);
    t37 = (t36 + 4);
    t38 = *((unsigned int *)t36);
    t39 = (t38 >> 8);
    *((unsigned int *)t34) = t39;
    t40 = *((unsigned int *)t37);
    t41 = (t40 >> 8);
    *((unsigned int *)t35) = t41;
    t42 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t42 & 511U);
    t43 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t43 & 511U);
    t44 = ((char*)((ng4)));
    memset(t45, 0, 8);
    xsi_vlog_unsigned_multiply(t45, 32, t34, 32, t44, 32);
    t46 = ((char*)((ng5)));
    memset(t47, 0, 8);
    xsi_vlog_unsigned_divide(t47, 32, t45, 32, t46, 32);
    memset(t48, 0, 8);
    xsi_vlog_unsigned_minus(t48, 32, t33, 32, t47, 32);
    t49 = (t0 + 4968);
    xsi_vlogvar_assign_value(t49, t48, 0, 0, 11);
    goto LAB12;

}

static void Cont_74_16(char *t0)
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

LAB0:    t1 = (t0 + 9856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 11736);
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
    t18 = (t0 + 10680);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_85_17(char *t0)
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

LAB0:    t1 = (t0 + 10104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4568U);
    t3 = *((char **)t2);
    t2 = (t0 + 11800);
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
    t16 = (t0 + 10696);
    *((int *)t16) = 1;

LAB1:    return;
}


extern void work_m_00000000002842560381_3351295929_init()
{
	static char *pe[] = {(void *)Cont_46_0,(void *)Cont_47_1,(void *)Cont_48_2,(void *)Cont_49_3,(void *)Cont_50_4,(void *)Cont_51_5,(void *)Cont_52_6,(void *)Cont_53_7,(void *)Cont_54_8,(void *)Cont_55_9,(void *)Cont_56_10,(void *)Cont_57_11,(void *)Cont_58_12,(void *)Cont_61_13,(void *)Cont_62_14,(void *)Always_67_15,(void *)Cont_74_16,(void *)Cont_85_17};
	xsi_register_didat("work_m_00000000002842560381_3351295929", "isim/tb_main_isim_beh.exe.sim/work/m_00000000002842560381_3351295929.didat");
	xsi_register_executes(pe);
}
