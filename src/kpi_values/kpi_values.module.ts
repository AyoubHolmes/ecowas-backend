import { Module } from '@nestjs/common';
import { KpiValuesService } from './kpi_values.service';
import { KpiValuesController } from './kpi_values.controller';

@Module({
  controllers: [KpiValuesController],
  providers: [KpiValuesService]
})
export class KpiValuesModule {}
