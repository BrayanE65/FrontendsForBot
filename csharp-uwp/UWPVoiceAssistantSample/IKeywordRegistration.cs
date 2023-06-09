﻿// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

namespace UWPVoiceAssistantSample
{
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Windows.ApplicationModel.ConversationalAgent;
    using Windows.Storage;

    /// <summary>
    /// An interface defining a class to encapsulate the process for registering a activation keyword.
    /// </summary>
    public interface IKeywordRegistration
    {
        /// <summary>
        /// Gets the display name associated with the keyword.
        /// </summary>
        string KeywordDisplayName { get; }

        /// <summary>
        /// Gets the signal identifier associated with a keyword. This value, together with the
        /// model identifier, uniquely identifies the configuration data for this keyword.
        /// </summary>
        string KeywordId { get; }

        /// <summary>
        /// Gets the model identifier associated with a keyword. This is typically a locale,
        /// like "1033", and together with the keyword identifier uniquely identifies the
        /// configuration data for this keyword.
        /// </summary>
        string KeywordModelId { get; }

        /// <summary>
        /// Gets the model data format associated with the activation keyword.
        /// </summary>
        string KeywordActivationModelDataFormat { get; }

        /// <summary>
        /// Gets the path to the model data associated with your activation keyword. This may be a
        /// standard file path or an ms-appx:/// path pointing to a resource in the app package.
        /// When not provided, no attempt will be made to associate model data with the
        /// activation keyword.
        /// </summary>
        string KeywordActivationModelFilePath { get; }

        /// <summary>
        /// Gets the available version of the model data associated with an activation keyword.
        /// </summary>
        Version AvailableActivationKeywordModelVersion { get; }

        /// <summary>
        /// Gets or sets the last successfully updated model data version associated with the
        /// activation keyword. This is stored in local settings for later retrieval when the
        /// data for a keyword may change and need update.
        /// </summary>
        Version LastUpdatedActivationKeywordModelVersion
        {
            get; set;
        }

        /// <summary>
        /// Gets or sets a value indicating whether the current active keyword configuration is
        /// in an application-enabled state.
        /// </summary>
        bool KeywordEnabledByApp
        {
            get; set;
        }

        /// <summary>
        /// Gets  sets the path to the keyword model used for validation of the activation
        /// keyword's result. This may be a file path or an ms-appx application path.
        /// </summary>
        string ConfirmationKeywordModelPath { get; }

        /// <summary>
        /// Changes the registered keyword using values from settings.
        /// </summary>
        /// <returns>A <see cref="Task"/> that returns on successful keyword setup.</returns>
        Task<List<ActivationSignalDetectionConfiguration>> UpdateKeyword();

        /// <summary>
        /// Updates the model data for current keyword.
        /// </summary>
        /// <returns>A <see cref="Task"/> that returns on successful keyword setup.</returns>
        Task UpdateModelData();

        /// <summary>
        /// Fetches and, if necessary, creates an activation keyword configuration matching the
        /// specified keyword registration information.
        /// </summary>
        /// <returns>A <see cref="Task"/> that returns on successful keyword setup.</returns>
        Task<List<ActivationSignalDetectionConfiguration>> GetOrCreateKeywordConfigurationsAsync();

        /// <summary>
        /// Creates a keyword registration data collection from an input file, such as a
        /// manifest for keyword updates.
        /// </summary>
        /// <returns> A configuration object for keyword registration. </returns>
        KeywordRegistration CreateFromFileAsync();

        /// <summary>
        /// Gets an asynchronous task that will return a storage file to the activation
        /// keyword associated with this registration information.
        /// </summary>
        /// <returns>A <see cref="Task"/> representing the asynchronous operation.</returns>
        Task<StorageFile> GetActivationKeywordFileAsync();

        /// <summary>
        /// Gets an asynchronous task that will return a storage file to the confirmation
        /// keyword associated with this registration information.
        /// </summary>
        /// <returns>A <see cref="Task"/> representing the asynchronous operation.</returns>
        Task<StorageFile> GetConfirmationKeywordFileAsync();
    }
}