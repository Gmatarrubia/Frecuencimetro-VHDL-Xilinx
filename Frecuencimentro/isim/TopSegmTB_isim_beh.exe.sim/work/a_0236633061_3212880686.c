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
static const char *ng0 = "D:/Descargas/1 y ultimo/Frecuenciometro ultimo/frecuencimentro/ControladorSegmentos.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0236633061_3212880686_p_0(char *t0)
{
    char t20[16];
    char t22[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    int t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3312);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1672U);
    t8 = *((char **)t4);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t4 = (t8 + t12);
    t13 = *((unsigned char *)t4);
    t14 = (t0 + 1672U);
    t15 = *((char **)t14);
    t16 = (3 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t14 = (t15 + t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 3;
    t24 = (t23 + 4U);
    *((int *)t24) = 1;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t25 = (1 - 3);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t19 = xsi_base_array_concat(t19, t20, t21, (char)99, t13, (char)97, t14, t22, (char)101);
    t26 = (1U + 3U);
    t27 = (4U != t26);
    if (t27 == 1)
        goto LAB8;

LAB9:    t24 = (t0 + 3392);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t19, 4U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 3456);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t14 = (t8 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5953);
    t9 = xsi_mem_cmp(t2, t4, 4U);
    if (t9 == 1)
        goto LAB11;

LAB16:    t8 = (t0 + 5957);
    t25 = xsi_mem_cmp(t8, t4, 4U);
    if (t25 == 1)
        goto LAB12;

LAB17:    t15 = (t0 + 5961);
    t32 = xsi_mem_cmp(t15, t4, 4U);
    if (t32 == 1)
        goto LAB13;

LAB18:    t21 = (t0 + 5965);
    t33 = xsi_mem_cmp(t21, t4, 4U);
    if (t33 == 1)
        goto LAB14;

LAB19:
LAB15:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 5969);
    t5 = (t0 + 3520);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    memcpy(t19, t2, 4U);
    xsi_driver_first_trans_fast(t5);

LAB10:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_size_not_matching(4U, t26, 0);
    goto LAB9;

LAB11:    xsi_set_current_line(43, ng0);
    t24 = (t0 + 1032U);
    t28 = *((char **)t24);
    t10 = (15 - 15);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t24 = (t28 + t12);
    t29 = (t0 + 3520);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t34 = (t31 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t24, 4U);
    xsi_driver_first_trans_fast(t29);
    goto LAB10;

LAB12:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t10 = (15 - 11);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t5 = (t0 + 3520);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    memcpy(t19, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB10;

LAB13:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t10 = (15 - 7);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t5 = (t0 + 3520);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    memcpy(t19, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB10;

LAB14:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t10 = (15 - 3);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t5 = (t0 + 3520);
    t8 = (t5 + 56U);
    t14 = *((char **)t8);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    memcpy(t19, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB10;

LAB20:;
}


extern void work_a_0236633061_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0236633061_3212880686_p_0};
	xsi_register_didat("work_a_0236633061_3212880686", "isim/TopSegmTB_isim_beh.exe.sim/work/a_0236633061_3212880686.didat");
	xsi_register_executes(pe);
}
