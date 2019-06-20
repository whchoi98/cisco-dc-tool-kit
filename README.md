작성자
==================
최우형 - 시스코 시스템즈 코리아
whchoi@cisco.com, whchoi98@cisco.com
수정일 : 2019-06-20

소개
===================
Cisco DataCenter SDK 및 관련 도구들을 모아 놓은 dokcerfile 입니다.
aci-toolkit, nxtoolkit, ucsmsdk, vmware pyvmomi

aci tool kit
==================
ACI SDK를 기반으로 시스코 ACI 컨트롤러의 정보를 조회하거나, 스크립을 수행할 수 있습니다.
sample directory의 credential.py 를 수정하여, 접속하고저 하는 APIC Credential 을 작성합니다.

Credential Python 작성 예제
* file name : credential.py

```
LOGIN    = "admin"
PASSWORD = "password"
URL      = "https://10.0.0.1"
```
사용 예제

```
/acitoolkit/samples # ls
README.md                              aci-create-static-endpoint.py          aci-get-interface-stats-from-nodes.py  aci-show-filter-entries.py             aci-show-tenant-detail.py
aci-add-static-binding-leaves.py       aci-create-tenant.py                   aci-get-tenantObject-from-json.py      aci-show-imported-contracts.py         aci-show-tenant-faults.py
aci-add-tags.py                        aci-create-vmw-domain.py               aci-raw-class-query.py                 aci-show-interface-stats.py            aci-show-tenant-health.py
aci-attach-epg-to-interface.py         aci-delete-epgs-tag.py                 aci-show-all-filter-entries.py         aci-show-interfaces.py                 aci-show-tenants-tags.py
aci-attach-epgs-with-contract.py       aci-delete-tenants-tag.py              aci-show-cdp.py                        aci-show-ip-endpoints.py               aci-show-tenants.py
aci-check-cluster.py                   aci-delete-tenants.py                  aci-show-contexts.py                   aci-show-ip-int-brief.py               aci-subscribe-tenants.py
aci-copy-tenant-config.py              aci-demo-contract-interface.py         aci-show-contracts.py                  aci-show-lldp.py                       aci-where-used.py
aci-create-bd.py                       aci-demo-contract.py                   aci-show-domains.py                    aci-show-monitor-policy.py             credentials.py
aci-create-bgp-peer.py                 aci-demo-portchannel.py                aci-show-endpoints.py                  aci-show-nodes.py                      credentials.py.sample
aci-create-epg.py                      aci-demo-script.py                     aci-show-epgs-tags.py                  aci-show-phys-domains.py               switch-commands
aci-create-microepg.py                 aci-endpoint-stats-tracker.py          aci-show-epgs.py                       aci-show-physical-inventory.py         tutorial.py
aci-create-ospf-external.py            aci-epg-reports-in-yaml.py             aci-show-external-networks.py          aci-show-process.py
aci-create-phys-domain.py              aci-find-ip.py                         aci-show-faults-by-domain.py           aci-show-subnets.py

/acitoolkit/samples # python aci-show-epgs.py
Tenant           Application Profile EPG
---------------- ------------------- -------------
KRIHS_Infra      Infra               APP
KRIHS_Infra      Infra               APP_Financial
KRIHS_Infra      Infra               BK
KRIHS_Infra      Infra               Compute
KRIHS_Infra      Infra               DB
KRIHS_Infra      Infra               DMZ_I
KRIHS_Infra      Infra               DMZ_R
```

 NXToolkit
 ============
NXOS SDK를 기반으로 NXOS가 탑재된 Nexus, NXOSv등의 호스트에 원격접속하여 정보를 취합하거나, 구성정보를 Push할 수 있습니다.

사용 예제

```
/nxtoolkit/samples # python ./nx-show-
nx-show-bgp.py              nx-show-fantrays.py         nx-show-interface-stats.py  nx-show-l2bds.py            nx-show-process.py          nx-show-rpm.py              nx-show-vrrp.py
nx-show-cdp-neighbors.py    nx-show-hardware-buffer.py  nx-show-interfaces.py       nx-show-linecards.py        nx-show-psus.py             nx-show-supervisors.py
nx-show-dns.py              nx-show-ifs.py              nx-show-ip.py               nx-show-port-channel.py     nx-show-rbac.py             nx-show-syslog.py
/nxtoolkit/samples # python ./nx-show-interface-stats.py
NX login username: admin
NX URL: https://10.72.86.143
NX Password:
   INTERFACE     Status           RX BYTES/Sec     TX BYTES/Sec     RX PKTs/Sec      TX PKTs/Sec
--------------   ------------     ------------     ---------------  ---------------  ---------------
eth1/1           up                          71.00            31.00             0.00             0.00
eth1/10          down                         0.00             0.00             0.00             0.00
eth1/11          down                         0.00             0.00             0.00             0.00
eth1/12          down                         0.00             0.00             0.00             0.00
eth1/13          down                         0.00             0.00             0.00             0.00
eth1/14          down                         0.00             0.00             0.00             0.00
eth1/15          down                         0.00             0.00             0.00             0.00
eth1/16          down                         0.00             0.00             0.00             0.00
eth1/17          down                         0.00             0.00             0.00             0.00
eth1/18          down                         0.00             0.00             0.00             0.00
```

UCSMsdk
=============
UCSM SDK를 기반으로 UCSM에 접속하여, UCSM의 자원 정보를 수집하거나 구성정보를 Push 할 수 있습니다.

VMware Pyvmomi
==============
VMware SDK Pyvmomi를 기반으로 vCenter, ESX등에 접속하여 정보를 수집하거나 구성정보를 Push 할 수 있습니다.

사용 예제

```
/whchoi_pyvmomi-community-samples/samples # ls
README.md                                    deploy_ova.py                                getvnicinfo.py                               set_note.py
__init__.py                                  deploy_ovf.py                                hello_world_vcenter.py                       set_vcenter_motd.py
add_disk_to_vm.py                            destroy_vm.py                                hello_world_vcenter_with_yaml_recorder.py    snapshot_operations.py
add_nic_to_vm.py                             detach_disk_from_vm.py                       linked_clone.py                              soft_reboot.py
add_portgroup_to_vswitch.py                  esxi_perf_sample.py                          list_datastore_cluster.py                    suds-to-pyvmomi.py
add_vm_extra_config_tags.py                  execute_program_in_vm.py                     list_datastore_info.py                       tests
add_vm_nic_to_dvs.py                         export_vm.py                                 list_dc_datastore_info.py                    tools
add_vswitch_to_host.py                       fcd_attach_vdisk_to_vm.py                    list_host_alarms.py                          update_esxi_advanced_settings.py
cdrom_vm.py                                  fcd_create_vdisk.py                          list_vm_storage_policy.py                    update_vm_storage_policy.py
change_disk_mode.py                          fcd_create_vdisk_from_snapshot.py            list_vmwaretools_status.py                   upgrade_vm.py
change_vm_cd_backend.py                      fcd_create_vdisk_snapshot.py                 make_dc_and_cluster.py                       upload_file_to_datastore.py
change_vm_nic_state.py                       fcd_delete_vdisk.py                          nsxt_change_vm_vif.py                        upload_file_to_vm.py
change_vm_vif.py                             fcd_delete_vdisk_snapshot.py                 pyvmomi-to-suds.py                           vSphereAutoRestartManager.py
clone_vm.py                                  fcd_list_vdisk_snapshots.py                  reboot_vm.py                                 vcenter_details.py
configure_dvs_port_group.py                  filter_vms.py                                reconfigure_host_for_ha.py                   virtual_machine_device_info.py
create_folder_in_datacenter.py               find_by_uuid.py                              relocate_events.py                           virtual_machine_power_cycle_and_question.py
create_random_marvel_vms.py                  generate_html5_console.py                    relocate_vm.py                               vm_perf_example.py
create_snapshot.py                           get_hosts_vswitch.py                         renamer.py                                   vminfo_quick.py
del_portgroup_from_vswitch.py                get_vm_names.py                              scheduled_poweroff.py                        waitforupdates.py
del_vswitch_from_host.py                     getallvms.py                                 service_manager_esxtop_in_vc.py
delete_disk_from_vm.py                       getorphanedvms.py                            service_manager_vscsistats_in_vc.py
delete_nic_from_vm.py                        getvmsbycluster.py                           sessions_list.py

/whchoi_pyvmomi-community-samples/samples # python get_vm_names.py   -s 10.72.86.31 -u root -p 1234Qwer
ArchonOVA
Archon_42
W2K12-OOB1-47
DC1-vCSA-6.7-43
W2K12-OOB1-48
Smart-VM03
SSMS_151
FMCv_6.2.3-83_155
asav-224
asav-222
asav-225
asav-223
```

docker command
===============
이미지 다운로드
* docker pull whchoi98/cisco-dc-tool-kit:1.0

도커 실행
* docker run --name abc -it whchoi98/cisco-dc-tool-kit:1.0 /bin/ash
