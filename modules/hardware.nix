{ pkgs, ... }: {
  hardware = {
    pulseaudio.enable = false;
    asahi = {
      addEdgeKernelConfig = true;
      useExperimentalGPUDriver = true;
      peripheralFirmwareDirectory = ../firmware;
    };
  };
}