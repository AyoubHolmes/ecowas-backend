import { Column, Entity, ManyToOne, OneToMany, PrimaryColumn } from 'typeorm';

@Entity()
export class Kpi {
  @PrimaryColumn()
  id: number;
  @Column()
  label: string;
  @ManyToOne(() => Kpi, (kpi) => kpi.childs, { nullable: true })
  parent: Kpi;
  @OneToMany(() => Kpi, (kpi) => kpi.parent)
  childs: Kpi[];
}
