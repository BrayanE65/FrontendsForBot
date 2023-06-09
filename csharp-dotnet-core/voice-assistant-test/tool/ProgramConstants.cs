﻿// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

namespace VoiceAssistantTest
{
    /// <summary>
    /// Class defining commonly used constants.
    /// </summary>
    internal class ProgramConstants
    {
        /// <summary>
        /// Name of the final report generated at the end of a test run.
        /// </summary>
        public const string TestReportFileName = "VoiceAssistantTestReport.json";

        /// <summary>
        /// Name of the logging text file that will be written if application logging is enabled.
        /// </summary>
        public const string TestLogFileName = "VoiceAssistantTest.log";

        /// <summary>
        /// Default TTS Duration margin to use (in milliseconds).
        /// </summary>
        public const int DefaultTTSAudioDurationMargin = 200;

        /// <summary>
        /// Default timeout to use (in milliseconds) while waiting for bot reply activities.
        /// </summary>
        public const int DefaultTimeout = 5000;

        /// <summary>
        /// Name of the sub folder to use under the main output test folder to write TTS responses.
        /// If this string is set to empty, then the TTS response WAV Files are written directly to the test Output folder.
        /// The test output folder is the OutputFolder/{testfile-name}Output/.
        /// </summary>
        public const string WAVFileFolderName = "WAVFiles";

        /// <summary>
        /// OR operator to separate multiple values in specific activity fields.
        /// </summary>
        public const string OROperator = "||";
    }
}
