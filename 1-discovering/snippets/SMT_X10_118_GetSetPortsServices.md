````
    -0x30   0x70    0x67    Get/Set ports & Services

    Request
      Data 1: 0/1 [Get/Set]
      Data 2: Port service
        0: HTTP_PORT,1: HTTPS_PORT,2: IKVM_PORT,3:VM_PORT,4:SSH_PORT,5:WSMAN_PORT,6:HTTP_SERVICE,
        7:HTTPS_SERVICE,8:IKVM_SERVICE,9:VM_SERVICE,10:SSH_SERVICE,11:WSMAN_SERVICE,12:SSL_REDIRECT
      Data 3-4 :  [Set]
      Data 4: port number (LSB)
      Data 5: port number (MSB)”    ”[Get]
    Response
      [Get]
        Data1: completion code
        Data2: port number (LSB)
        Data3: port number (MSB)
      [Set]
        Data1: completion code”
````
