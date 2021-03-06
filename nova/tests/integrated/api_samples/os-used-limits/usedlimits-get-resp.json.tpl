{
    "limits": {
        "absolute": {
            "maxImageMeta": 128,
            "maxPersonality": 5,
            "maxPersonalitySize": 10240,
            "maxSecurityGroupRules": 20,
            "maxSecurityGroups": 10,
            "maxServerMeta": 128,
            "maxTotalCores": 20,
            "maxTotalFloatingIps": 10,
            "maxTotalInstances": 10,
            "maxTotalKeypairs": 100,
            "maxTotalRAMSize": 51200,
            "totalCoresUsed": 0,
            "totalInstancesUsed": 0,
            "totalKeyPairsUsed": 0,
            "totalRAMUsed": 0,
            "totalSecurityGroupsUsed": 0
        },
        "rate": [
            {
                "limit": [
                    {
                        "next-available": "%(timestamp)s",
                        "remaining": 10,
                        "unit": "MINUTE",
                        "value": 10,
                        "verb": "POST"
                    },
                    {
                        "next-available": "%(timestamp)s",
                        "remaining": 10,
                        "unit": "MINUTE",
                        "value": 10,
                        "verb": "PUT"
                    },
                    {
                        "next-available": "%(timestamp)s",
                        "remaining": 100,
                        "unit": "MINUTE",
                        "value": 100,
                        "verb": "DELETE"
                    }
                ],
                "regex": ".*",
                "uri": "*"
            },
            {
                "limit": [
                    {
                        "next-available": "%(timestamp)s",
                        "remaining": 50,
                        "unit": "DAY",
                        "value": 50,
                        "verb": "POST"
                    }
                ],
                "regex": "^/servers",
                "uri": "*/servers"
            },
            {
                "limit": [
                    {
                        "next-available": "%(timestamp)s",
                        "remaining": 3,
                        "unit": "MINUTE",
                        "value": 3,
                        "verb": "GET"
                    }
                ],
                "regex": ".*changes-since.*",
                "uri": "*changes-since*"
            },
            {
                "limit": [
                    {
                        "next-available": "%(timestamp)s",
                        "remaining": 12,
                        "unit": "HOUR",
                        "value": 12,
                        "verb": "GET"
                    }
                ],
                "regex": "^/os-fping",
                "uri": "*/os-fping"
            }
        ]
    }
}
