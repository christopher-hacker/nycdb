#! /bin/bash

datasets=(
  # acris
  # boundaries
  # dcp_housingdb
  # dhs_daily_shelter_count
  # dob_certificate_occupancy
  dob_complaints
  dob_safety_violations
  # dob_vacate_orders
  dob_violations
  # dobjobs
  # dof_421a
  # dof_annual_sales
  # dof_exemptions
  # dof_sales
  # dof_tax_lien_sale_list
  # ecb_violations
  # hpd_affordable_production
  hpd_complaints
  # hpd_conh
  # hpd_hwo_charges
  # hpd_litigations
  # hpd_omo
  # hpd_registrations
  # hpd_vacateorders
  hpd_violations
  # j51_exemptions
  # marshal_evictions
  # mci_applications
  # nycha_bbls
  # oath_hearings
  # oca
  # pad
  # pluto_10v1
  # pluto_15v1
  # pluto_16v2
  # pluto_17v1
  # pluto_18v1
  # pluto_18v2
  # pluto_19v1
  # pluto_19v2
  # pluto_20v8
  # pluto_21v3
  # pluto_22v1
  # pluto_23v1
  # pluto_latest
  # rentstab
  # rentstab_summary
  # rentstab_v2
  # speculation_watch_list
)

for dataset in "${datasets[@]}"
do
  echo "Downloading and loading $dataset"
  docker-compose run nycdb --download "$dataset"
  docker-compose run nycdb --load "$dataset"
  echo "Downloaded and loaded $dataset"
done