//
//  AVTransform.swift
//  FilestackSDK
//
//  Created by Ruben Nine on 21/08/2017.
//  Copyright © 2017 Filestack. All rights reserved.
//

import Foundation

/**
    Converts a video or audio to a different format, resolution, sample rate, etc.
 */
@objc(FSAVTransform) public class AVTransform: Transform {

    /**
        Initializes a `AVTransform` object.
     */
    public init() {

        super.init(name: "video_convert")
    }

    /**
        Adds the `preset` option.

        - Parameter value: The format to convert to.
            See (File Processing - Video Conversion)[https://www.filestack.com/docs/video-transformations]
            for more information about supported presets.
     */
    @discardableResult public func preset(_ value: String) -> Self {

        options.append((key: "preset", value: value))

        return self
    }

    /**
        Adds the `force` option.

        - Parameter value: Restarts completed or pending video encoding. If a transcoding fails,
            and you make the same request again, it will not restart the transcoding process unless
            this parameter is set to `true`.
     */
    @discardableResult public func force(_ value: Bool) -> Self {

        options.append((key: "force", value: value))

        return self
    }

    /**
        Adds the `width` option.

        - Parameter value: Set the width in pixels of the video that is generated by the transcoding
            process.
     */
    @discardableResult public func width(_ value: Int) -> Self {

        options.append((key: "width", value: value))

        return self
    }

    /**
        Adds the `height` option.

        - Parameter value: Set the height in pixels of the video that is generated by the
            transcoding process.
     */
    @discardableResult public func height(_ value: Int) -> Self {

        options.append((key: "height", value: value))

        return self
    }

    /**
        Adds the `title` option.

        - Parameter value: Set the title in the file metadata.
     */
    @discardableResult public func title(_ value: String) -> Self {

        options.append((key: "title", value: value))

        return self
    }

    /**
        Adds the `extName` option.

        - Parameter value: Set the file extension for the video that is generated by the
            transcoding process.
     */
    @discardableResult public func extName(_ value: String) -> Self {

        options.append((key: "extname", value: value))

        return self
    }

    /**
        Adds the `fileName` option.

        - Parameter value: Set the filename of the video that is generated by the transcoding
            process.
     */
    @discardableResult public func fileName(_ value: String) -> Self {

        options.append((key: "filename", value: value))

        return self
    }

    /**
        Adds the `location` option.

        - Parameter value: An `StorageLocation` value.
     */
    @discardableResult public func location(_ value: StorageLocation) -> Self {

        options.append((key: "location", value: value))

        return self
    }

    /**
        Adds the `path` option.

        - Parameter value: The path to store the file at within the specified file store.
            For S3, this is the key where the file will be stored at. By default, Filestack stores
            the file at the root at a unique id, followed by an underscore, followed by the
            filename, for example: `3AB239102DB_myvideo.mp4`.
     */
    @discardableResult public func path(_ value: String) -> Self {

        options.append((key: "path", value: value))

        return self
    }

    /**
        Adds the `access` option.

        - Parameter value: An `StorageAccess` value.
     */
    @discardableResult public func access(_ value: StorageAccess) -> Self {

        options.append((key: "access", value: value))

        return self
    }

    /**
        Adds the `container` option.

        - Parameter value: The bucket or container in the specified file store where the file
            should end up.
     */
    @discardableResult public func container(_ value: String) -> Self {

        options.append((key: "container", value: value))

        return self
    }

    /**
        Adds the `upscale` option.

        - Parameter value: Upscale the video resolution to match your profile. Defaults to `true`.
     */
    @discardableResult public func upscale(_ value: Bool) -> Self {

        options.append((key: "upscale", value: value))

        return self
    }

    /**
        Adds the `aspectMode` option.

        - Parameter value: An `TransformAspectMode` value.
     */
    @discardableResult public func aspectMode(_ value: TransformAspectMode) -> Self {

        options.append((key: "aspect_mode", value: value))

        return self
    }

    /**
        Adds the `twoPass` option.

        - Parameter value: Specify that the transcoding process should do two passes to improve
            video quality. Defaults to `false`.
     */
    @discardableResult public func twoPass(_ value: Bool) -> Self {

        options.append((key: "two_pass", value: value))

        return self
    }

    /**
        Adds the `videoBitRate` option.

        - Parameter value: Specify the video bitrate for the video that is generated by the
            transcoding process. Valid range: `1...5000`
     */
    @discardableResult public func videoBitRate(_ value: Int) -> Self {

        options.append((key: "video_bitrate", value: value))

        return self
    }

    /**
        Adds the `fps` option.

        - Parameter value: Specify the frames per second of the video that is generated by the
            transcoding process. Valid range: `1...300`. If ommited, uses the original fps of
            the source file.
     */
    @discardableResult public func fps(_ value: Int) -> Self {

        options.append((key: "fps", value: value))

        return self
    }

    /**
        Adds the `keyframeInterval` option.

        - Parameter value: Adds a key frame every `keyframeInterval` frames to the video
            that is generated by the transcoding process. Default is `250`.
     */
    @discardableResult public func keyframeInterval(_ value: Int) -> Self {

        options.append((key: "keyframe_interval", value: value))

        return self
    }

    /**
        Adds the `audioBitRate` option.

        - Parameter value: Sets the audio bitrate for the video that is generated by the
            transcoding process. Valid range: `0...999`
     */
    @discardableResult public func audioBitRate(_ value: Int) -> Self {

        options.append((key: "audio_bitrate", value: value))

        return self
    }

    /**
        Adds the `audioSampleRate` option.

        - Parameter value: Set the audio sample rate for the video that is generated by
            the transcoding process. Valid range: `0...99999`. Default is `44100`.
     */
    @discardableResult public func audioSampleRate(_ value: Int) -> Self {

        options.append((key: "audio_samplerate", value: value))

        return self
    }

    /**
        Adds the `audioChannels` option.

        - Parameter value: Set the number of audio channels for the video that is generated
            by the transcoding process. Valid range: `1...12`. Default is same as source video.
     */
    @discardableResult public func audioChannels(_ value: Int) -> Self {

        options.append((key: "audio_channels", value: value))

        return self
    }

    /**
        Adds the `clipLength` option.

        - Parameter value: Set the length of the video that is generated by the transcoding
            process. Valid format should include hours, minutes and seconds.
     */
    @discardableResult public func clipLength(_ value: String) -> Self {

        options.append((key: "clip_length", value: value))

        return self
    }

    /**
        Adds the `clipOffset` option.

        - Parameter value: Set the point to begin the video clip from. For example, `00:00:10`
            will start the video transcode 10 seconds into the source video. Valid format should
            include hours, minutes and seconds.
     */
    @discardableResult public func clipOffset(_ value: String) -> Self {

        options.append((key: "clip_offset", value: value))

        return self
    }

    /**
        Adds the `watermarkURL` option.

        - Parameter value: The Filestack handle or URL of the image file to use as a
            watermark on the transcoded video.
     */
    @discardableResult public func watermarkURL(_ value: URL) -> Self {

        options.append((key: "watermark_url", value: value))

        return self
    }

    /**
        Adds the `watermarkTop` option.

        - Parameter value: The distance from the top of the video frame to place the
            watermark on the video. Valid range: `0...9999`
     */
    @discardableResult public func watermarkTop(_ value: Int) -> Self {

        options.append((key: "watermark_top", value: value))

        return self
    }

    /**
        Adds the `watermarkBottom` option.

        - Parameter value: The distance from the bottom of the video frame to place the
            watermark on the video. Valid range: `0...9999`
     */
    @discardableResult public func watermarkBottom(_ value: Int) -> Self {

        options.append((key: "watermark_bottom", value: value))

        return self
    }

    /**
        Adds the `watermarkLeft` option.

        - Parameter value: The distance from the left of the video frame to place the
            watermark on the video. Valid range: `0...9999`
     */
    @discardableResult public func watermarkLeft(_ value: Int) -> Self {

        options.append((key: "watermark_left", value: value))

        return self
    }

    /**
        Adds the `watermarkRight` option.

        - Parameter value: The distance from the right of the video frame to place the
            watermark on the video. Valid range: `0...9999`
     */
    @discardableResult public func watermarkRight(_ value: Int) -> Self {

        options.append((key: "watermark_right", value: value))

        return self
    }

    /**
        Adds the `watermarkWidth` option.

        - Parameter value: Resize the width of the watermark.
     */
    @discardableResult public func watermarkWidth(_ value: Int) -> Self {

        options.append((key: "watermark_width", value: value))

        return self
    }

    /**
     Adds the `watermarkHeight` option.

     - Parameter value: Resize the height of the watermark.
     */
    @discardableResult public func watermarkHeight(_ value: Int) -> Self {

        options.append((key: "watermark_height", value: value))

        return self
    }
}