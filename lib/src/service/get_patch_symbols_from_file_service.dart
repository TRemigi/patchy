import 'dart:async';

import 'package:user_management_module/src/use_case/get_patch_symbols/get_patch_symbols_service_response.dart';

import '../use_case/get_patch_symbols/get_patch_symbols_service.dart';
import '../view/_classes/other_classes/patch_symbol.dart';

class GetPatchSymbolsFromFileService implements GetPatchSymbolsService {
  StreamController<GetPatchSymbolsServiceResponse>? streamController;

  @override
  Stream<GetPatchSymbolsServiceResponse> stream() {
    streamController = StreamController<GetPatchSymbolsServiceResponse>();
    streamController?.onCancel = () {
      streamController = null;
    };

    _getAssetPathsFromDirectory();

    return streamController!.stream;
  }

  List<String> assetPaths = [
    'attenuator.png',
    'audio-processor-generic.png',
    'audio-src.png',
    'bias-voltage.png',
    'buffered-multiple.png',
    'chorus.png',
    'clipper.png',
    'clock-divider.png',
    'clock-multiplier.png',
    'comparator.png',
    'crossfader.png',
    'cv-attenuator.png',
    'cv-attenuverter.png',
    'cv-inverter.png',
    'cv-matrix-mixer.png',
    'cv-mixer.png',
    'cv-mixer-attenuverting.png',
    'cv-mod-generic.png',
    'cv-recorder.png',
    'cv-rectifier-full.png',
    'cv-rectifier-half.png',
    'cv-src-generic.png',
    'cv-switch.png',
    'cv-utility-mixer.png',
    'delay.png',
    'env-ad.png',
    'env-ad-loop.png',
    'env-adsr.png',
    'env-adsr-loop.png',
    'env-ahdsr.png',
    'env-ahdsr-loop.png',
    'env-ar.png',
    'env-ar-loop.png',
    'env-dadsr-loop.png',
    'env-dasdr.png',
    'envelope-follower.png',
    'gate-delay.png',
    'granular-synth.png',
    'inverter.png',
    'keyboard-ctrl.png',
    'lfo-bpm-saw.png',
    'lfo-bpm-sine.png',
    'lfo-bpm-square.png',
    'lfo-bpm-triangle.png',
    'lfo-reset-sync.png',
    'lfo-saw.png',
    'lfo-sine.png',
    'lfo-square.png',
    'lfo-triangle.png',
    'logic-and.png',
    'logic-nand.png',
    'logic-nor.png',
    'logic-not.png',
    'logic-or.png',
    'logic-xnor.png',
    'logic-xor.png',
    'lpg.png',
    'master-clock.png',
    'microphone-input.png',
    'mixer.png',
    'mixer-inverting.png',
    'noise.png',
    'phase-shifter.png',
    'physical-mod-generic.png',
    'physical-mod-membrane.png',
    'physical-mod-pipe.png',
    'physical-mod-string.png',
    'precision-adder.png',
    'quantizer.png',
    'random-smooth.png',
    'random-stepped.png',
    'rectifier-full.png',
    'rectifier-half.png',
    'resonator.png',
    'reverb.png',
    'ringmod.png',
    'sample-and-hold.png',
    'sample-player.png',
    'sample-rec.png',
    'seq-cv-gate.png',
    'slew-limiter.png',
    'speech-synthesis.png',
    'switch.png',
    'touch-ctrl.png',
    'trigger-pattern-generator.png',
    'vca.png',
    'vca-dc.png',
    'vcf-bandpass.png',
    'vcf-comb.png',
    'vcf-highpass.png',
    'vcf-highpass-res.png',
    'vcf-lowpass.png',
    'vcf-lowpass-res.png',
    'vcf-notch.png',
    'vco-pwm.png',
    'vco-ramp.png',
    'vco-saw.png',
    'vco-sine.png',
    'vco-square.png',
    'vco-triangle.png',
    'vco-wavetable.png',
    'voltage-slider.png',
    'wavefolder.png',
    'waveshaper.png',
  ];

  _getAssetPathsFromDirectory() async {
    for (String asset in assetPaths) {
      await Future.delayed(const Duration(milliseconds: 500));
      streamController?.sink
          .add(GetPatchSymbolsServiceResponse(PatchSymbol(assetPath: 'assets/$asset')));
    }
  }
}
