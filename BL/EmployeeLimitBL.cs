﻿using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BL.Converters;
namespace BL
{
    public class EmployeeLimitBL
    {
        Entities NTT = new Entities();
        public DTO.EmployeeLimit getEmployeeLimit(int id)
        {
            var res = NTT.EmployeeLimit.FirstOrDefault(x => x.restrictionId == id);
            return res != null ? DTO.DTOConvertor.ConvertToDTO(res) : null;

        }
        public List<DTO.EmployeeLimit> GetAllEmployeeLimit()
        {
            var res = NTT.EmployeeLimit.Select(x => new DTO.EmployeeLimit
            {
                employeeInInstitutionId = x.employeeInInstitutionId,
                date = x.date,
                shiftInInstitutionId = x.shiftInInstitutionId,
                substituteEmployeeId = x.substituteEmployeeId
            }).ToList();

            return res != null ? res : null;
        }
        public DTO.EmployeeLimit CreateEmployeeLimit(DTO.EmployeeLimit e)
        {
            var employeeLimit = NTT.EmployeeLimit.FirstOrDefault(x => x.restrictionId == e.employeeShiftId);

            EmployeeLimit res = employeeLimit == null ? NTT.EmployeeLimit.Add(DTO.DTOConvertor.ConvertToDTO(e)) : null;
            NTT.SaveChanges();
            return res != null ? DTO.DTOConvertor.ConvertToDTO(res) : null;
        }
    }
}

