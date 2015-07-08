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
static const char *ng0 = "D:/Descargas/1 y ultimo/Frecuenciometro ultimo/frecuencimentro/EscaladoPrePresentacion.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );


static void work_a_3758213435_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5704);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 5576);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3758213435_3212880686_p_1(char *t0)
{
    char t9[16];
    char t15[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    int t33;
    int t34;
    unsigned char t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 9788U);
    t3 = (t0 + 3408U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t2, t1, t5);
    if (t6 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 9788U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t3 = (t0 + 3408U);
    t4 = *((char **)t3);
    t32 = *((int *)t4);
    t26 = (t5 >= t32);
    if (t26 == 1)
        goto LAB9;

LAB10:    t6 = (unsigned char)0;

LAB11:    if (t6 != 0)
        goto LAB7;

LAB8:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 9788U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t3 = (t0 + 3528U);
    t4 = *((char **)t3);
    t32 = *((int *)t4);
    t6 = (t5 >= t32);
    if (t6 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 10108);
    t3 = (t0 + 5832);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 10110);
    t3 = (t0 + 5768);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t3);

LAB3:    t1 = (t0 + 5592);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 2632U);
    t7 = *((char **)t3);
    t3 = (t0 + 2792U);
    t8 = *((char **)t3);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 9900U);
    t12 = (t0 + 9916U);
    t3 = xsi_base_array_concat(t3, t9, t10, (char)97, t7, t11, (char)97, t8, t12, (char)101);
    t13 = (t0 + 2952U);
    t14 = *((char **)t13);
    t16 = ((IEEE_P_2592010699) + 4024);
    t17 = (t0 + 9932U);
    t13 = xsi_base_array_concat(t13, t15, t16, (char)97, t3, t9, (char)97, t14, t17, (char)101);
    t18 = (t0 + 3112U);
    t19 = *((char **)t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t22 = (t0 + 9948U);
    t18 = xsi_base_array_concat(t18, t20, t21, (char)97, t13, t15, (char)97, t19, t22, (char)101);
    t23 = (4U + 4U);
    t24 = (t23 + 4U);
    t25 = (t24 + 4U);
    t26 = (16U != t25);
    if (t26 == 1)
        goto LAB5;

LAB6:    t27 = (t0 + 5768);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t18, 16U);
    xsi_driver_first_trans_fast(t27);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 10094);
    t3 = (t0 + 5832);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

LAB5:    xsi_size_not_matching(16U, t25, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(91, ng0);
    t8 = (t0 + 2152U);
    t11 = *((char **)t8);
    t8 = (t0 + 2312U);
    t12 = *((char **)t8);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t0 + 9852U);
    t16 = (t0 + 9868U);
    t8 = xsi_base_array_concat(t8, t9, t13, (char)97, t11, t14, (char)97, t12, t16, (char)101);
    t17 = (t0 + 2472U);
    t18 = *((char **)t17);
    t19 = ((IEEE_P_2592010699) + 4024);
    t21 = (t0 + 9884U);
    t17 = xsi_base_array_concat(t17, t15, t19, (char)97, t8, t9, (char)97, t18, t21, (char)101);
    t22 = (t0 + 2632U);
    t27 = *((char **)t22);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t0 + 9900U);
    t22 = xsi_base_array_concat(t22, t20, t28, (char)97, t17, t15, (char)97, t27, t29, (char)101);
    t23 = (4U + 4U);
    t24 = (t23 + 4U);
    t25 = (t24 + 4U);
    t36 = (16U != t25);
    if (t36 == 1)
        goto LAB12;

LAB13:    t30 = (t0 + 5768);
    t31 = (t30 + 56U);
    t37 = *((char **)t31);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t22, 16U);
    xsi_driver_first_trans_fast(t30);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 10096);
    t3 = (t0 + 5832);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

LAB9:    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t3 = (t0 + 9788U);
    t33 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t3);
    t8 = (t0 + 3528U);
    t10 = *((char **)t8);
    t34 = *((int *)t10);
    t35 = (t33 < t34);
    t6 = t35;
    goto LAB11;

LAB12:    xsi_size_not_matching(16U, t25, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(94, ng0);
    t3 = (t0 + 10098);
    t8 = (t0 + 5832);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 2U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 10100);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t15 + 0U);
    t10 = (t8 + 0U);
    *((int *)t10) = 0;
    t10 = (t8 + 4U);
    *((int *)t10) = 7;
    t10 = (t8 + 8U);
    *((int *)t10) = 1;
    t5 = (7 - 0);
    t23 = (t5 * 1);
    t23 = (t23 + 1);
    t10 = (t8 + 12U);
    *((unsigned int *)t10) = t23;
    t10 = (t0 + 9836U);
    t3 = xsi_base_array_concat(t3, t9, t7, (char)97, t1, t15, (char)97, t4, t10, (char)101);
    t11 = (t0 + 2152U);
    t12 = *((char **)t11);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t0 + 9852U);
    t11 = xsi_base_array_concat(t11, t20, t13, (char)97, t3, t9, (char)97, t12, t14, (char)101);
    t23 = (8U + 4U);
    t24 = (t23 + 4U);
    t6 = (16U != t24);
    if (t6 == 1)
        goto LAB16;

LAB17:    t16 = (t0 + 5768);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    memcpy(t21, t11, 16U);
    xsi_driver_first_trans_fast(t16);
    goto LAB3;

LAB16:    xsi_size_not_matching(16U, t24, 0);
    goto LAB17;

}

static void work_a_3758213435_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(102, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5896);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5608);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3758213435_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(103, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5960);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5624);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3758213435_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3758213435_3212880686_p_0,(void *)work_a_3758213435_3212880686_p_1,(void *)work_a_3758213435_3212880686_p_2,(void *)work_a_3758213435_3212880686_p_3};
	xsi_register_didat("work_a_3758213435_3212880686", "isim/TopSegmTB_isim_beh.exe.sim/work/a_3758213435_3212880686.didat");
	xsi_register_executes(pe);
}
