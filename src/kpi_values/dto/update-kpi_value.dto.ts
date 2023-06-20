import { PartialType } from '@nestjs/swagger';
import { CreateKpiValueDto } from './create-kpi_value.dto';

export class UpdateKpiValueDto extends PartialType(CreateKpiValueDto) {}
