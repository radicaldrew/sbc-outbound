insert into webhooks(webhook_sid, url, username, password) values('90dda62e-0ea2-47d1-8164-5bd49003476c', 'http://127.0.0.1:4000/auth', 'foo', 'bar');

insert into service_providers (service_provider_sid, name, root_domain, registration_hook_sid) 
values ('3f35518f-5a0d-4c2e-90a5-2407bb3b36f0', 'SP A', 'jambonz.org', '90dda62e-0ea2-47d1-8164-5bd49003476c');
insert into accounts(account_sid, service_provider_sid, name, sip_realm, registration_hook_sid)
values ('ed649e33-e771-403a-8c99-1780eabbc803', '3f35518f-5a0d-4c2e-90a5-2407bb3b36f0', 'test account', 'sip.example.com', '90dda62e-0ea2-47d1-8164-5bd49003476c');

-- one carrier, uas script expecting a reinvite
insert into voip_carriers (voip_carrier_sid, name, e164_leading_plus, requires_register, register_username, register_sip_realm, register_password) 
values ('287c1452-620d-4195-9f19-c9814ef90d78', 'westco', 0, 1, 'foo', 'jambonz.org', 'bar');
insert into sip_gateways (sip_gateway_sid, voip_carrier_sid, ipv4, inbound, outbound) 
values ('124a5339-c62c-4075-9e19-f4de70a96597', '287c1452-620d-4195-9f19-c9814ef90d78', '172.39.0.23', true, true);
