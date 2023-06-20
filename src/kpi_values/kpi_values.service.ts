import { Injectable } from '@nestjs/common';
import { CreateKpiValueDto } from './dto/create-kpi_value.dto';
import { UpdateKpiValueDto } from './dto/update-kpi_value.dto';

@Injectable()
export class KpiValuesService {
  create(createKpiValueDto: CreateKpiValueDto) {
    return 'This action adds a new kpiValue';
  }

  findAll() {
    return `This action returns all kpiValues`;
  }

  findOne(id: number) {
    return `This action returns a #${id} kpiValue`;
  }

  update(id: number, updateKpiValueDto: UpdateKpiValueDto) {
    return `This action updates a #${id} kpiValue`;
  }

  remove(id: number) {
    return `This action removes a #${id} kpiValue`;
  }
}
