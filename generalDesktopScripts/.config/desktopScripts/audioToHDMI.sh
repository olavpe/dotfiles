#!/bin/sh

# Looking for the "sink numbers"
HDMI_ID=$(pactl list short sinks | grep "hdmi" | awk '{print $1;}')
ANALOG_ID=$(pactl list short sinks | grep "analog" | awk '{print $1;}')

if [ -z "$HDMI_ID" ]; then
    echo "Usage: $0 <sinkId/sinkName>" >&2
    echo "Valid sinks:" >&2
    pactl list short sinks >&2
    exit 1
fi

newSink="$HDMI_ID"

# Changing all the streams to the new sink
pactl list short sink-inputs|while read stream; do
    streamId=$(echo $stream|cut '-d ' -f1)
    echo "moving stream $streamId"
    pactl move-sink-input "$streamId" "$newSink"
done
