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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002603017429_3132378795_init();
    work_m_00000000000770424547_0672914172_init();
    work_m_00000000002195882473_2140897300_init();
    work_m_00000000001832015825_3996337969_init();
    work_m_00000000002429504277_1574610237_init();
    work_m_00000000004087002859_0301347179_init();
    work_m_00000000004221488179_2615040240_init();
    work_m_00000000002713017634_3016132124_init();
    work_m_00000000002772475574_2102307526_init();
    work_m_00000000002206774973_0886308060_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002206774973_0886308060");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
