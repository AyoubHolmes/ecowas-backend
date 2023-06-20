import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { KpiValuesService } from './kpi_values.service';
import { CreateKpiValueDto } from './dto/create-kpi_value.dto';
import { UpdateKpiValueDto } from './dto/update-kpi_value.dto';

@Controller('kpi-values')
export class KpiValuesController {
  constructor(private readonly kpiValuesService: KpiValuesService) {}

  @Post()
  create(@Body() createKpiValueDto: CreateKpiValueDto) {
    return this.kpiValuesService.create(createKpiValueDto);
  }

  @Get()
  findAll() {
    return this.kpiValuesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.kpiValuesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateKpiValueDto: UpdateKpiValueDto) {
    return this.kpiValuesService.update(+id, updateKpiValueDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.kpiValuesService.remove(+id);
  }
}
