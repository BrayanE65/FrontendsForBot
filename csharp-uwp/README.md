# [Welcome to the UWP Voice Assistant Sample](https://github.com/Azure-Samples/Cognitive-Services-Voice-Assistant)

## Overview

This is a sample [UWP](https://docs.microsoft.com/en-us/windows/uwp/get-started/ "Getting Started with UWP") application developed to demonstrate proper usage of the [voice assistant features on Windows](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/windows-voice-assistants-overview). in conjunction with [Direct Line Speech](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/direct-line-speech "What is Direct Line Speech?") (DLS) to create a voice assistant application on Windows.

Specifically, the sample demonstrates how to 

- launch the application with an always-on, low-power, software keyword spotter using a custom keyword
- complete keyword verification with a [Custom Keyword](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/speech-devices-sdk-create-kws) and text-to-speech conversion with a [Custom Voice](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/how-to-custom-voice), both from [Cognitive Speech Services](https://azure.microsoft.com/en-us/services/cognitive-services/speech-services/ "Cognitive Speech Services")
- use DLS for a voice-in, voice-out interaction with a bot developed using [Microsoft Bot Framework](https://dev.botframework.com/ "Microsoft Bot Framework")

 This app was designed to be a starting point for developers creating their own voice agent applications. It can be used as a set of reusable components or as an easily adaptable MVP.

 **Note**: If you are unfamiliar with the voice assistant features on Windows or Direct Line Speech, we'd recommend you'd visit the following documentation before getting started:

 - [Voice assistants on Windows](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/windows-voice-assistants-overview)
 - [Direct Line Speech](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/direct-line-speech)

## Prerequisites

- [optional] A Limited Access Feature token, issued by Microsoft, is needed if you are building, packaging, or publishing your own app to work with Windows. For development purposes, the sample already contains an appropriate token. Learn more [here](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/how-to-windows-voice-assistants-get-started).
- [optional] A .bin file for first stage keyword verification generated by Microsoft. Otherwise, you can use the provided .bin file, which uses the keyword "Contoso."
- A subscription key for Cognitive Speech Services for speech-to-text and text-to-speech conversions. Try Speech Services for free [here](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/get-started).
- A bot created using Bot Framework version 4.2 or above that's subscribed to to [Direct Line Speech](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/direct-line-speech) to enable voice input and output. [This guide](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/tutorial-voice-enable-your-bot-speech-sdk) contains step-by-step instructions to make a basic "echo bot" and subscribe it to Direct Line Speech. You can also go go [here](https://blog.botframework.com/2018/05/07/build-a-microsoft-bot-framework-bot-with-the-bot-builder-sdk-v4/) for steps on how to create a customized bot, then follow the same steps [here](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/tutorial-voice-enable-your-bot-speech-sdk) to subscribe it to Direct Line Speech, but with your bot rather than the "echo bot".
- A PC with a [Windows Insider](https://insider.windows.com/en-us/) fast ring build of Windows and the Windows Insider version of the [Windows SDK](https://www.microsoft.com/en-us/software-download/windowsinsiderpreviewSDK). This sample code is verified as working on Windows Insider Release Build 19025.vb_release_analog.191112-1600 using [Windows SDK 19018](https://www.microsoft.com/en-us/software-download/windowsinsiderpreviewSDK). Any Build or SDK above the specified versions should be compatible.
- [Microsoft Visual Studio 2017](https://visualstudio.microsoft.com/), Community Edition or higher.
- The **Universal Windows Platform development** workload in Visual Studio. See [Get set up](https://docs.microsoft.com/en-us/windows/uwp/get-started/get-set-up) to get your machine ready for developing UWP Applications.
- A working microphone and audio output.

## Getting Started

### Cloning the repo

To use the samples provided, clone this GitHub repository using Git.

```
git clone https://github.com/Azure-Samples/Cognitive-Services-Voice-Assistant.git
cd Cognitive-Services-Voice-Assistant\clients\csharp-uwp\UWPVoiceAssistantSample
```

### Building the application

Note: By building this sample you will download the Microsoft Cognitive Services Speech SDK. By downloading you acknowledge its license, see Speech SDK license agreement.

- Download the sample code to your development PC.
- Navigate to the folder containing this sample, and select the solution file contained within it.
- Set the active solution configuration and platform to the desired values under Build > Configuration Manager: 
   -On a 64-bit Windows installation, choose x64 as active solution platform.
   -On a 32-bit Windows installation, choose x86 as active solution platform.
- Press Ctrl+Shift+B, or select Build > Build Solution.

### Running the application

To debug the app and then run it, press F5 or use **Debug > Start Debugging**. To run the app without debugging, press Ctrl+F5 or use **Debug > Start Without Debugging**.

### Setting up the application

- Click on "Voice activation setting" or, in Windows Settings, navigate to "Voice activation privacy settings". Make sure "Allow apps to use voice activation is enabled. Then, when you scroll down, there will be a list of applications. Under the entry for "UWP Voice Assistant Sample", flip both toggles to enabled.
- When you see the prompt for microphone access, click accept.
- Back in the app, ensure the "Speech SDK" toggle is enabled.
- Activate the application by saying the registered keyword or clicking Start Listening. Note that speaking the keyword will launch the application even if it is closed.

### Optional:

- You can train a [Custom Speech Recognition Model](https://speech.microsoft.com/customspeech) to improve speech recognition quality. To use your custom model, [update the config file](https://github.com/Azure-Samples/Cognitive-Services-Voice-Assistant/blob/master/clients/csharp-uwp/UWPVoiceAssistantSample/Assets/defaultConfig.json) with the Speech Recognition endpoint id.
- You can create a [Custom Voice](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/how-to-custom-voice-create-voice) for your application's output audio. When you have created your Custom Voice,  To use your custom model, [update the config file](https://github.com/Azure-Samples/Cognitive-Services-Voice-Assistant/blob/master/clients/csharp-uwp/UWPVoiceAssistantSample/Assets/defaultConfig.json) with the Custom Voice ID.
- Toggle the controls for debugging purposes
    -Microphone file capture: creates log files of audio captured when the keyword was detected by MVA
    -SDK logging: enables logging from the DLS SDK to an output file.
    -2nd stage keyword spotting: Disabling this setting will disable keyword verification beyond MVA's verification. This is not recommended in practice as MVA has a high false accept rate and should only be used for ease of testing.


### Updating the config.json file

The config.json file in this project should be updated with the credentials you will be using for your bot and for Cognitive Speech Services. To do this, click the "Open config" button in the "Controls" section of the sample app. In the opened config file, replace the placeholder text with your credentials, namely the Speech Subscription key from your Speech Services subscription and the region. If you are using Custom Commands, also include your Custom Commands App ID.

Note: The Speech Key and any other resource integrations must be registered in the same Azure Region.

#### Generating Keyword Spotting Performance Metrics

An optional key can be added to generate a performance log for your keyword activation and confirmation models. In the config.json add **EnableKwsLogging: true**. This will create a csv file with timestamps indicating if the keyword was accepted or rejected for each stage found in the LocalState Folder. 
If your first stage keyword model is a hardware keyword only, the bin file can be omitted in config.json and two parameter values need to be changed from the default values to: 
**UseHardwareDetector: true** and **SetModelData: false**. If you want to use both hardware keyword and software keyword, then only one modification is needed: **UseHardwareDetector: true**.
<br>
By default, EnableKwsLogging and EnableHardwareDetector are false and SetModelData is true.

#### Enabling KWS+KWV+SR only mode

Each utterance returns a bot response, this response can be ignored by the client by adding a property to the DialogServiceConnector object. When using this property you will have to set the SpeechRegion to an empty string and the following in the SetProperty key:
```json
  "SetProperty": {
    "SPEECH-Endpoint": "wss://westus.convai.speech.microsoft.com/orchestrate/api/v1"
  }
```

## Modifying the sample

### Using a Custom Wake Word

- Visit [Create Custom Wake Word](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/speech-devices-sdk-create-kws) and save the .table file.
- Obtain a whitelisted AppID, GUID, and Keyword Display Name from Microsoft, as well as a bin file containing a model for your keyword. 
- Add the .table and .bin files to the UWPVoiceAssistantSample/SDKKeywords folder before building the application.
- After running the application, [update the config file](https://github.com/Azure-Samples/Cognitive-Services-Voice-Assistant/blob/master/clients/csharp-uwp/UWPVoiceAssistantSample/Assets/defaultConfig.json) by replacing all fields in the KeywordActivationModel and KeywordRecognitionModel. 

After First Run, you may want to verify that the Keyword was correctly registered to the device. To do so:
- Open Registry Editor
- Navigate to Computer\HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\SPEECH_OneCore\Settings\VoiceActivation\SignalDetectionConfigurations\{AppId}\{LocalGUID}\{LanguageID}\{GUID}
- The DisplayName field must match the whitelisted keyword display name entered in the KeywordRegistration. If not, edit it to match the entered name.
- Active and Available Fields must have a value of 1. If not, edit them to Hexadecimal 1.

## Troubleshooting

### App is not launching when keyword is spoken
- Make sure all prerequsite settings are enabled: the mic is present, mic permissions are granted, voice activation is enabled for the computer and for the application, and internet is connected and available.
- MVA keyword spotting
   - The service named "AarSvc_#####" is the service that signals the application to start when the application is not running. Open task manager and after clicking "More Details" and then the "Services" tab, find this process. 
      - If you find it, the process may need to be restarted. If you cannot find it, restart your computer.
      - If it does not appear after restarting, verify your version of Windows is above Windows Insider Release Build 19025.
- DLS keyword spotting
   - Make sure that SDKKeywords folder and its contents are copied in the AppX folder
      - The AppX folder can be found in **[ProjectFolder]/bin/x64/Debug/AppX**
      - If they are not copied, change the properties in the solution to "Copy if newer" for each file in the folder
   - Make sure all credentials like Speech Key and region are entered properly.
   - If using a Custom Wake Word: Verify that the second stage table file name matches the Keyword Display name .

## Common Issues
- Ensure that the Bot, Speech Key, and any other resource integrations are registered in the same Azure Region


## References

- This is the initial landing page for the Azure Cognitive Services Speech Documentation. It is recommended for beginners to read through the sections of interest to understand the capabilites of Azure Cognitive Services Speech Service `=>` [Speech Services Documentation](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/)

- [Speech SDK API reference for C#](https://docs.microsoft.com/en-us/dotnet/api/microsoft.cognitiveservices.speech?view=azure-dotnet)
- To voice enable your bot using Azure Direct Line Speech Channel `=>` [Voice-enable your bot using the Speed SDK Tutorial](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/tutorial-voice-enable-your-bot-speech-sdk)

- Voice-first Virtual Assistants [FAQ's](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/faq-voice-first-virtual-assistants)

- This E-book is a great resource to fill any knowledge gaps as well as build additional knowledge in building Azure Cognitive Services Solutions `=>` [Learning Azure Cognitive Services E-book](https://azure.microsoft.com/en-us/resources/learning-azure-cognitive-services/ "Azure Cognitive Services E-book")

- Speech SDK documenation landing page `=>` [Speech SDK](https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/speech-sdk)


- Windows.Media.Audio namespace allows us to access, modify and process audio `=>` [UWP Audio Graphs API](https://docs.microsoft.com/en-us/windows/uwp/audio-video-camera/audio-graphs)

- The Speech.Audio namespace allows the application to access and output audio streams for processing `=>` [Microsoft.Cognitive.Services.Speech.Audio Namespace](https://docs.microsoft.com/en-us/dotnet/api/microsoft.cognitiveservices.speech.audio?view=azure-dotnet)

- Microsoft.CognitiveServices.Speech.Dialog allows us to connect the Direct Line Speech enabled bot to connect to our UWP Application. View the DialogServiceConfig class for implementation methods `=>` [Microsoft.Cognitive.Services.Speech.Dialog Namespace](https://docs.microsoft.com/en-us/dotnet/api/microsoft.cognitiveservices.speech.dialog?view=azure-dotnet)

- [What is UWP?](https://docs.microsoft.com/en-us/windows/uwp/get-started/universal-application-platform-guide)


Copyright (c) Microsoft Corporation. All rights reserved.