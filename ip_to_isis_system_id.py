def ip_to_isis_system_id(ip: str, area: str = "49.0001", nsel: str = "00") -> str:
    """
    Generate an ISIS NET (Network Entity Title) from an IPv4 address.

    Method: each IPv4 octet is zero-padded to 3 digits, concatenated
    into 12 digits, then regrouped into three 4-digit blocks to form
    the 6-byte System ID.

    Args:
        ip:   IPv4 address, e.g. "192.168.10.10"
        area: Area ID prefix, e.g. "10" or "49.0001"
        nsel: NSEL/selector byte (usually "00")

    Returns:
        Full NET string, e.g. "10.1921.6801.0010.10"
    """
    octets = ip.split(".")
    if len(octets) != 4:
        raise ValueError(f"'{ip}' is not a valid IPv4 address")

    for o in octets:
        if not o.isdigit() or not (0 <= int(o) <= 255):
            raise ValueError(f"'{ip}' is not a valid IPv4 address")

    # Pad each octet to 3 digits -> 12-digit string
    padded = "".join(o.zfill(3) for o in octets)

    # Split into 4-digit groups for the system ID
    system_id = ".".join(padded[i:i + 4] for i in range(0, 12, 4))

    return f"{area}.{system_id}.{nsel}"


# Example matching your case:
print(ip_to_isis_system_id("192.168.10.10", area="10", nsel="10"))
# -> 10.1921.6801.0010.10
