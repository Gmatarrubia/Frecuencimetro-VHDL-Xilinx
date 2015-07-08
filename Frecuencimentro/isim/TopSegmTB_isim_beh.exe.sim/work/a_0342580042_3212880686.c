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
static const char *ng0 = "D:/Descargas/1 y ultimo/Frecuenciometro ultimo/frecuencimentro/conversor_bin_to_bcd_grande.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0342580042_3212880686_p_0(char *t0)
{
    char t10[16];
    char t16[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    int t8;
    int t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(164, ng0);
    t1 = xsi_get_transient_memory(72U);
    memset(t1, 0, 72U);
    t2 = t1;
    memset(t2, (unsigned char)2, 72U);
    t3 = (t0 + 2608U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 72U);
    xsi_set_current_line(165, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2608U);
    t3 = *((char **)t1);
    t5 = (71 - 34);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t3 + t7);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(167, ng0);
    t1 = (t0 + 7476);
    *((int *)t1) = 0;
    t2 = (t0 + 7480);
    *((int *)t2) = 28;
    t8 = 0;
    t9 = 28;

LAB2:    if (t8 <= t9)
        goto LAB3;

LAB5:    xsi_set_current_line(212, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 63);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t0 + 3992);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(213, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 59);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t0 + 4056);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(214, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 55);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t0 + 4120);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(215, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 51);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t0 + 4184);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(216, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 47);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t0 + 4248);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(217, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 43);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t0 + 4312);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(218, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 39);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t0 + 4376);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(219, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 35);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t0 + 4440);
    t4 = (t3 + 56U);
    t11 = *((char **)t4);
    t12 = (t11 + 56U);
    t17 = *((char **)t12);
    memcpy(t17, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 3912);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(169, ng0);
    t3 = (t0 + 2608U);
    t4 = *((char **)t3);
    t5 = (71 - 35);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 35;
    t12 = (t11 + 4U);
    *((int *)t12) = 32;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (32 - 35);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t3, t10, 4);
    if (t15 != 0)
        goto LAB6;

LAB8:
LAB7:    xsi_set_current_line(173, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 39);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t10 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 39;
    t4 = (t3 + 4U);
    *((int *)t4) = 36;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t13 = (36 - 39);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t14;
    t15 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t10, 4);
    if (t15 != 0)
        goto LAB9;

LAB11:
LAB10:    xsi_set_current_line(178, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 43);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t10 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 43;
    t4 = (t3 + 4U);
    *((int *)t4) = 40;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t13 = (40 - 43);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t14;
    t15 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t10, 4);
    if (t15 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(183, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 47);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t10 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 47;
    t4 = (t3 + 4U);
    *((int *)t4) = 44;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t13 = (44 - 47);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t14;
    t15 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t10, 4);
    if (t15 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(188, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 51);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t10 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 51;
    t4 = (t3 + 4U);
    *((int *)t4) = 48;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t13 = (48 - 51);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t14;
    t15 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t10, 4);
    if (t15 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(193, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 55);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t10 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 55;
    t4 = (t3 + 4U);
    *((int *)t4) = 52;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t13 = (52 - 55);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t14;
    t15 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t10, 4);
    if (t15 != 0)
        goto LAB21;

LAB23:
LAB22:    xsi_set_current_line(198, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 59);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t10 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 59;
    t4 = (t3 + 4U);
    *((int *)t4) = 56;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t13 = (56 - 59);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t14;
    t15 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t10, 4);
    if (t15 != 0)
        goto LAB24;

LAB26:
LAB25:    xsi_set_current_line(203, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 63);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = (t10 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 63;
    t4 = (t3 + 4U);
    *((int *)t4) = 60;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t13 = (60 - 63);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t14;
    t15 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t10, 4);
    if (t15 != 0)
        goto LAB27;

LAB29:
LAB28:    xsi_set_current_line(209, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t5 = (71 - 70);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t3 = xsi_get_transient_memory(71U);
    memcpy(t3, t1, 71U);
    t4 = (t0 + 2608U);
    t11 = *((char **)t4);
    t14 = (71 - 71);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t4 = (t11 + t19);
    memcpy(t4, t3, 71U);

LAB4:    t1 = (t0 + 7476);
    t8 = *((int *)t1);
    t2 = (t0 + 7480);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB5;

LAB30:    t13 = (t8 + 1);
    t8 = t13;
    t3 = (t0 + 7476);
    *((int *)t3) = t8;
    goto LAB2;

LAB6:    xsi_set_current_line(170, ng0);
    t12 = (t0 + 2608U);
    t17 = *((char **)t12);
    t14 = (71 - 35);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t12 = (t17 + t19);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 35;
    t22 = (t21 + 4U);
    *((int *)t22) = 32;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (32 - 35);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t22 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t12, t20, 3);
    t25 = (t0 + 2608U);
    t26 = *((char **)t25);
    t24 = (71 - 35);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t25 = (t26 + t28);
    t29 = (t16 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    memcpy(t25, t22, t31);
    goto LAB7;

LAB9:    xsi_set_current_line(175, ng0);
    t4 = (t0 + 2608U);
    t11 = *((char **)t4);
    t14 = (71 - 39);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t4 = (t11 + t19);
    t12 = (t20 + 0U);
    t17 = (t12 + 0U);
    *((int *)t17) = 39;
    t17 = (t12 + 4U);
    *((int *)t17) = 36;
    t17 = (t12 + 8U);
    *((int *)t17) = -1;
    t23 = (36 - 39);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t12 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 2608U);
    t22 = *((char **)t21);
    t24 = (71 - 39);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB10;

LAB12:    xsi_set_current_line(180, ng0);
    t4 = (t0 + 2608U);
    t11 = *((char **)t4);
    t14 = (71 - 43);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t4 = (t11 + t19);
    t12 = (t20 + 0U);
    t17 = (t12 + 0U);
    *((int *)t17) = 43;
    t17 = (t12 + 4U);
    *((int *)t17) = 40;
    t17 = (t12 + 8U);
    *((int *)t17) = -1;
    t23 = (40 - 43);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t12 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 2608U);
    t22 = *((char **)t21);
    t24 = (71 - 43);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB13;

LAB15:    xsi_set_current_line(185, ng0);
    t4 = (t0 + 2608U);
    t11 = *((char **)t4);
    t14 = (71 - 47);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t4 = (t11 + t19);
    t12 = (t20 + 0U);
    t17 = (t12 + 0U);
    *((int *)t17) = 47;
    t17 = (t12 + 4U);
    *((int *)t17) = 44;
    t17 = (t12 + 8U);
    *((int *)t17) = -1;
    t23 = (44 - 47);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t12 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 2608U);
    t22 = *((char **)t21);
    t24 = (71 - 47);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB16;

LAB18:    xsi_set_current_line(190, ng0);
    t4 = (t0 + 2608U);
    t11 = *((char **)t4);
    t14 = (71 - 51);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t4 = (t11 + t19);
    t12 = (t20 + 0U);
    t17 = (t12 + 0U);
    *((int *)t17) = 51;
    t17 = (t12 + 4U);
    *((int *)t17) = 48;
    t17 = (t12 + 8U);
    *((int *)t17) = -1;
    t23 = (48 - 51);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t12 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 2608U);
    t22 = *((char **)t21);
    t24 = (71 - 51);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB19;

LAB21:    xsi_set_current_line(195, ng0);
    t4 = (t0 + 2608U);
    t11 = *((char **)t4);
    t14 = (71 - 55);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t4 = (t11 + t19);
    t12 = (t20 + 0U);
    t17 = (t12 + 0U);
    *((int *)t17) = 55;
    t17 = (t12 + 4U);
    *((int *)t17) = 52;
    t17 = (t12 + 8U);
    *((int *)t17) = -1;
    t23 = (52 - 55);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t12 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 2608U);
    t22 = *((char **)t21);
    t24 = (71 - 55);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB22;

LAB24:    xsi_set_current_line(200, ng0);
    t4 = (t0 + 2608U);
    t11 = *((char **)t4);
    t14 = (71 - 59);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t4 = (t11 + t19);
    t12 = (t20 + 0U);
    t17 = (t12 + 0U);
    *((int *)t17) = 59;
    t17 = (t12 + 4U);
    *((int *)t17) = 56;
    t17 = (t12 + 8U);
    *((int *)t17) = -1;
    t23 = (56 - 59);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t12 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 2608U);
    t22 = *((char **)t21);
    t24 = (71 - 59);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB25;

LAB27:    xsi_set_current_line(205, ng0);
    t4 = (t0 + 2608U);
    t11 = *((char **)t4);
    t14 = (71 - 63);
    t18 = (t14 * 1U);
    t19 = (0 + t18);
    t4 = (t11 + t19);
    t12 = (t20 + 0U);
    t17 = (t12 + 0U);
    *((int *)t17) = 63;
    t17 = (t12 + 4U);
    *((int *)t17) = 60;
    t17 = (t12 + 8U);
    *((int *)t17) = -1;
    t23 = (60 - 63);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t12 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 2608U);
    t22 = *((char **)t21);
    t24 = (71 - 63);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB28;

}


extern void work_a_0342580042_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0342580042_3212880686_p_0};
	xsi_register_didat("work_a_0342580042_3212880686", "isim/TopSegmTB_isim_beh.exe.sim/work/a_0342580042_3212880686.didat");
	xsi_register_executes(pe);
}
