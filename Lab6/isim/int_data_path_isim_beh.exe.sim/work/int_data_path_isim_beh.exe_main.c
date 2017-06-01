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
    work_m_00000000003226386356_0058029152_init();
    work_m_00000000003261683119_2757847956_init();
    work_m_00000000003055036246_0065856647_init();
    work_m_00000000003189959606_1202104584_init();
    work_m_00000000002085694925_1608492841_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002085694925_1608492841");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
