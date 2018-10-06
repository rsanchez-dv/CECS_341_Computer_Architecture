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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Lab4-Memory/LEGv8.v";
static int ng1[] = {0, 0, 0, 0};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {6, 0};
static int ng6[] = {7, 0};
static int ng7[] = {12, 0};



static void Cont_8_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 1628U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(8, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    xsi_vlog_unsigned_equal(t6, 64, t4, 64, t5, 32);
    t7 = (t0 + 2020);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 1U;
    t13 = t12;
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t7, 0, 0);
    t20 = (t0 + 1968);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Always_9_1(char *t0)
{
    char t10[16];
    char t57[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;

LAB0:    t1 = (t0 + 1772U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(9, ng0);
    t2 = (t0 + 1976);
    *((int *)t2) = 1;
    t3 = (t0 + 1800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(9, ng0);

LAB5:    xsi_set_current_line(10, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(17, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(11, ng0);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    t7 = (t0 + 784U);
    t9 = *((char **)t7);
    t11 = 0;

LAB25:    t12 = (t11 < 2);
    if (t12 == 1)
        goto LAB26;

LAB27:    t56 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t56, t10, 0, 0, 64, 0LL);
    goto LAB21;

LAB9:    xsi_set_current_line(12, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    t11 = 0;

LAB31:    t12 = (t11 < 2);
    if (t12 == 1)
        goto LAB32;

LAB33:    t37 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t37, t10, 0, 0, 64, 0LL);
    goto LAB21;

LAB11:    xsi_set_current_line(13, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    xsi_vlog_unsigned_add(t10, 64, t4, 64, t7, 64);
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 64, 0LL);
    goto LAB21;

LAB13:    xsi_set_current_line(14, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    xsi_vlog_unsigned_minus(t10, 64, t4, 64, t7, 64);
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 64, 0LL);
    goto LAB21;

LAB15:    xsi_set_current_line(15, ng0);
    t3 = (t0 + 784U);
    t4 = *((char **)t3);
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 64, 0LL);
    goto LAB21;

LAB17:    xsi_set_current_line(16, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 784U);
    t7 = *((char **)t3);
    t11 = 0;

LAB37:    t12 = (t11 < 2);
    if (t12 == 1)
        goto LAB38;

LAB39:    xsi_vlogtype_unsigned_bit_neg(t10, 64, t57, 64);
    t37 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t37, t10, 0, 0, 64, 0LL);
    goto LAB21;

LAB22:    t31 = (t11 * 8);
    t32 = *((unsigned int *)t15);
    t33 = *((unsigned int *)t25);
    *((unsigned int *)t15) = (t32 | t33);
    t34 = (t8 + t31);
    t35 = (t31 + 4);
    t36 = (t8 + t35);
    t37 = (t9 + t31);
    t38 = (t31 + 4);
    t39 = (t9 + t38);
    t40 = *((unsigned int *)t34);
    t41 = (~(t40));
    t42 = *((unsigned int *)t36);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (~(t44));
    t46 = *((unsigned int *)t39);
    t47 = (~(t46));
    t48 = (t41 & t43);
    t49 = (t45 & t47);
    t50 = (~(t48));
    t51 = (~(t49));
    t52 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t52 & t50);
    t53 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t53 & t51);
    t54 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t54 & t50);
    t55 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t55 & t51);

LAB24:    t11 = (t11 + 1);
    goto LAB25;

LAB23:    goto LAB24;

LAB26:    t13 = (t11 * 8);
    t7 = (t8 + t13);
    t14 = (t9 + t13);
    t15 = (t10 + t13);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t14);
    t18 = (t16 & t17);
    *((unsigned int *)t15) = t18;
    t19 = (t11 * 8);
    t20 = (t19 + 4);
    t21 = (t8 + t20);
    t22 = (t19 + 4);
    t23 = (t9 + t22);
    t24 = (t19 + 4);
    t25 = (t10 + t24);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t23);
    t28 = (t26 | t27);
    *((unsigned int *)t25) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 != 0);
    if (t30 == 1)
        goto LAB22;
    else
        goto LAB23;

LAB28:    t31 = (t11 * 8);
    t32 = *((unsigned int *)t9);
    t33 = *((unsigned int *)t21);
    *((unsigned int *)t9) = (t32 | t33);
    t23 = (t4 + t31);
    t35 = (t31 + 4);
    t25 = (t4 + t35);
    t34 = (t7 + t31);
    t38 = (t31 + 4);
    t36 = (t7 + t38);
    t40 = *((unsigned int *)t25);
    t41 = (~(t40));
    t42 = *((unsigned int *)t23);
    t48 = (t42 & t41);
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = *((unsigned int *)t34);
    t49 = (t45 & t44);
    t46 = (~(t48));
    t47 = (~(t49));
    t50 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t50 & t46);
    t51 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t51 & t47);

LAB30:    t11 = (t11 + 1);
    goto LAB31;

LAB29:    goto LAB30;

LAB32:    t13 = (t11 * 8);
    t3 = (t4 + t13);
    t8 = (t7 + t13);
    t9 = (t10 + t13);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = (t11 * 8);
    t20 = (t19 + 4);
    t14 = (t4 + t20);
    t22 = (t19 + 4);
    t15 = (t7 + t22);
    t24 = (t19 + 4);
    t21 = (t10 + t24);
    t26 = *((unsigned int *)t14);
    t27 = *((unsigned int *)t15);
    t28 = (t26 | t27);
    *((unsigned int *)t21) = t28;
    t29 = *((unsigned int *)t21);
    t30 = (t29 != 0);
    if (t30 == 1)
        goto LAB28;
    else
        goto LAB29;

LAB34:    t31 = (t11 * 8);
    t32 = *((unsigned int *)t9);
    t33 = *((unsigned int *)t21);
    *((unsigned int *)t9) = (t32 | t33);
    t23 = (t4 + t31);
    t35 = (t31 + 4);
    t25 = (t4 + t35);
    t34 = (t7 + t31);
    t38 = (t31 + 4);
    t36 = (t7 + t38);
    t40 = *((unsigned int *)t25);
    t41 = (~(t40));
    t42 = *((unsigned int *)t23);
    t48 = (t42 & t41);
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = *((unsigned int *)t34);
    t49 = (t45 & t44);
    t46 = (~(t48));
    t47 = (~(t49));
    t50 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t50 & t46);
    t51 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t51 & t47);

LAB36:    t11 = (t11 + 1);
    goto LAB37;

LAB35:    goto LAB36;

LAB38:    t13 = (t11 * 8);
    t3 = (t4 + t13);
    t8 = (t7 + t13);
    t9 = (t57 + t13);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = (t11 * 8);
    t20 = (t19 + 4);
    t14 = (t4 + t20);
    t22 = (t19 + 4);
    t15 = (t7 + t22);
    t24 = (t19 + 4);
    t21 = (t57 + t24);
    t26 = *((unsigned int *)t14);
    t27 = *((unsigned int *)t15);
    t28 = (t26 | t27);
    *((unsigned int *)t21) = t28;
    t29 = *((unsigned int *)t21);
    t30 = (t29 != 0);
    if (t30 == 1)
        goto LAB34;
    else
        goto LAB35;

}


extern void work_m_00000000002472718786_3717951388_init()
{
	static char *pe[] = {(void *)Cont_8_0,(void *)Always_9_1};
	xsi_register_didat("work_m_00000000002472718786_3717951388", "isim/RFALUDM_Lab4c_isim_beh.exe.sim/work/m_00000000002472718786_3717951388.didat");
	xsi_register_executes(pe);
}
