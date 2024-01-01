{
  # Auto mount drives
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  
  # Enable CUPS to print documents.
  services.printing.enable = true;
}
