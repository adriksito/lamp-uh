$TTL    604800
@       IN      SOA     ns1.equipo4docker.com. admin.equipo4docker.com. (
                          2024112401 ; Serial
                          604800     ; Refresh
                          86400      ; Retry
                          2419200    ; Expire
                          604800 )   ; Minimum TTL

; Registros de Name Server (NS)
@       IN      NS      ns1.equipo4docker.com.

; Registros A
ns1     IN      A       172.18.0.5  ; Dirección IP de tu servidor DNS (BIND9)
@       IN      A       172.18.0.5  ; Dirección IP de tu servidor Apache

; Registros adicionales (si es necesario)
www     IN      A       172.18.0.5  ; Dirección IP de tu servidor Apache (para www.equipo4docker.com)
