"insert into golfheroes.amplitude_analytics(server_received_time, app, device_carrier, city, user_id, uuid, event_time, platform, os_version, amplitude_id, processed_time, user_creation_time, version_name, ip_address, paying, dma, group_properties, user_properties, client_upload_time, event_type, library, amplitude_attribution_ids, device_type, device_manufacturer, start_version, location_lng, server_upload_time, event_id, location_lat, os_name, amplitude_event_type, device_brand, groups, event_properties, data, device_id, language, device_model, country, region, is_attribution_event, adid, session_id, device_family, idfa, client_event_time) values ('\(.server_received_time)', \(.app), '\(.device_carrier)', '\(.city)', '\(.user_id)', '\(.uuid)', '\(.event_time)', '\(.platform)', '\(.os_version)', \(.amplitude_id), '\(.processed_time)', '\(.user_creation_time)', '\(.version_name)', '\(.ip_address)', \(.paying), '\(.dma)', '\(.group_properties)', '\(.user_properties)', '\(.client_upload_time)', '\(.event_type)', '\(.library)', '\(.amplitude_attribution_ids)', '\(.device_type)', '\(.device_manufacturer)', '\(.start_version)', \(.location_lng), '\(.server_upload_time)', '\(.event_id)', \(.location_lat), '\(.os_name)', '\(.amplitude_event_type)', '\(.device_brand)', '\(.groups)', '\(.event_properties)', '\(.data)', '\(.device_id)', '\(.language)', '\(.device_model)', '\(.country)', '\(.region)', \(.is_attribution_event), '\(.adid)', \(.session_id), '\(.device_family)', \(.idfa), '\(.client_event_time)' );"