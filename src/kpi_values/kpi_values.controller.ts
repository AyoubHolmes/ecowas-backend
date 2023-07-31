import { Controller, Get, Param, Query } from '@nestjs/common';
import { KpiValuesService } from './kpi_values.service';

@Controller('kpi-values')
export class KpiValuesController {
  constructor(private readonly kpiValuesService: KpiValuesService) {}

  @Get('index/:country')
  findKpiIndexByCountry(@Param('country') country: number) {
    return this.kpiValuesService.findKpiIndexByCountry(country);
  }

  @Get('all')
  findKpiByCountry(@Query('country') country: number) {
    return this.kpiValuesService.findKpiByCountry(country);
  }

  @Get()
  findKpiDetailsByCountry(
    @Query('country') country: number,
    @Query('kpi') kpi: number,
  ) {
    return this.kpiValuesService.findKpiDetailsByCountry(country, kpi);
  }

  @Get('/nested')
  findNestedKpiDetailsByCountry(
    @Query('country') country: number,
    @Query('kpi') kpi: number,
  ) {
    return this.kpiValuesService.findNestedKpiDetailsByCountry(country, kpi);
  }
}
