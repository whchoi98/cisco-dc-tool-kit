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

 NXToolkit
 ============
NXOS SDK를 기반으로 NXOS가 탑재된 Nexus, NXOSv등의 호스트에 원격접속하여 정보를 취합하거나, 구성정보를 Push할 수 있습니다.

UCSMsdk
=============
UCSM SDK를 기반으로 UCSM에 접속하여, UCSM의 자원 정보를 수집하거나 구성정보를 Push 할 수 있습니다.

VMware Pyvmomi
==============
VMware SDK Pyvmomi를 기반으로 vCenter, ESX등에 접속하여 정보를 수집하거나 구성정보를 Push 할 수 있습니다.

docker command
===============
이미지 다운로드
* docker pull whchoi98/cisco-dc-tool-kit:1.0

도커 실행
* docker run --name abc -it whchoi98/cisco-dc-tool-kit:1.0 /bin/ash
