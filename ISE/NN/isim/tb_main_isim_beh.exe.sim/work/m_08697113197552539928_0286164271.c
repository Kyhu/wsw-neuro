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
static const char *ng0 = "/home/kyhu/Workspace/WSW/wsw-neuro/ISE/NN/main.v";
static unsigned int ng1[] = {4096U, 0U};



static void NetDecl_73_0(char *t0)
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

LAB0:    t1 = (t0 + 8600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9760);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 131071U;
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
    xsi_driver_vfirst_trans(t3, 0, 16U);

LAB1:    return;
}

static void Cont_74_1(char *t0)
{
    char t3[40];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 8848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4888U);
    t4 = *((char **)t2);
    t2 = (t0 + 2328U);
    t5 = *((char **)t2);
    t2 = (t0 + 2168U);
    t6 = *((char **)t2);
    t2 = (t0 + 2008U);
    t7 = *((char **)t2);
    t2 = (t0 + 1848U);
    t8 = *((char **)t2);
    t2 = (t0 + 1688U);
    t9 = *((char **)t2);
    t2 = (t0 + 1528U);
    t10 = *((char **)t2);
    t2 = (t0 + 1368U);
    t11 = *((char **)t2);
    xsi_vlogtype_concat(t3, 136, 136, 8U, t11, 17, t10, 17, t9, 17, t8, 17, t7, 17, t6, 17, t5, 17, t4, 17);
    t2 = (t0 + 9824);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    xsi_vlog_bit_copy(t15, 0, t3, 0, 136);
    xsi_driver_vfirst_trans(t2, 0, 135);
    t16 = (t0 + 9664);
    *((int *)t16) = 1;

LAB1:    return;
}

static void NetDecl_184_2(char *t0)
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

LAB0:    t1 = (t0 + 9096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9888);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 131071U;
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
    xsi_driver_vfirst_trans(t3, 0, 16U);

LAB1:    return;
}

static void Cont_185_3(char *t0)
{
    char t3[64];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 9344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(185, ng0);
    t2 = (t0 + 5208U);
    t4 = *((char **)t2);
    t2 = (t0 + 4568U);
    t5 = *((char **)t2);
    t2 = (t0 + 4408U);
    t6 = *((char **)t2);
    t2 = (t0 + 4248U);
    t7 = *((char **)t2);
    t2 = (t0 + 4088U);
    t8 = *((char **)t2);
    t2 = (t0 + 3928U);
    t9 = *((char **)t2);
    t2 = (t0 + 3768U);
    t10 = *((char **)t2);
    t2 = (t0 + 3608U);
    t11 = *((char **)t2);
    t2 = (t0 + 3448U);
    t12 = *((char **)t2);
    t2 = (t0 + 3288U);
    t13 = *((char **)t2);
    t2 = (t0 + 3128U);
    t14 = *((char **)t2);
    t2 = (t0 + 2968U);
    t15 = *((char **)t2);
    t2 = (t0 + 2808U);
    t16 = *((char **)t2);
    t2 = (t0 + 2648U);
    t17 = *((char **)t2);
    xsi_vlogtype_concat(t3, 238, 238, 14U, t17, 17, t16, 17, t15, 17, t14, 17, t13, 17, t12, 17, t11, 17, t10, 17, t9, 17, t8, 17, t7, 17, t6, 17, t5, 17, t4, 17);
    t2 = (t0 + 9952);
    t18 = (t2 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    xsi_vlog_bit_copy(t21, 0, t3, 0, 238);
    xsi_driver_vfirst_trans(t2, 0, 237);
    t22 = (t0 + 9680);
    *((int *)t22) = 1;

LAB1:    return;
}


extern void work_m_08697113197552539928_0286164271_init()
{
	static char *pe[] = {(void *)NetDecl_73_0,(void *)Cont_74_1,(void *)NetDecl_184_2,(void *)Cont_185_3};
	xsi_register_didat("work_m_08697113197552539928_0286164271", "isim/tb_main_isim_beh.exe.sim/work/m_08697113197552539928_0286164271.didat");
	xsi_register_executes(pe);
}
