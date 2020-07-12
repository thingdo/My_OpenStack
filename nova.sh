nova help
nova help list

nova list  #庞大数量的话，容易导致数据库卡死
nova list --all-t
nova list --all-t --name
nova list --all-t --ip <ip>
nova list --host  <host_name>  #查看主机上的虚拟机
nova list --delete --name
nova list --delete --ip <ip>
nova list --status  "error"
    
nova-status upgrade check


nova host-list
nova host-list |grep compute | wc -l
nova host-describe <host_name>

nova service-list 
nova service-disable  <compute>  nova-compute --reason 'delete'
nova service-enable  <compute>  nova-compute


nova hypervisor-list


nova instance-action-list  <vm_uuid>
nova instance-action  <vm_uuid>  <Request_ID>


nova console-log <vm_uuid>


nova get-vnc-console <vm_uuid> novnc


nova rebuild <vm_uuid>  <image_id>  --poll 

nova resize  <vm_uuid>  <flavor_id>

nova backup <vm_uuid>  <backup_name>  <backup-type> 如 "daily" or "weekly"     <rotation>  #整数用来代表轮询的数量
